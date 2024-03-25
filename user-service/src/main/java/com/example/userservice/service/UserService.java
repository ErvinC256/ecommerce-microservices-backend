package com.example.userservice.service;

import com.example.userservice.dto.RegisterDto;
import com.example.userservice.dto.AuthenticateDto;
import com.example.userservice.model.User;
import com.example.userservice.publisher.UserEventsPublisher;
import com.example.userservice.repository.UserRepository;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final RabbitTemplate rabbitTemplate;
    private final UserEventsPublisher userEventsPublisher;

    public UserService(UserRepository userRepository, RabbitTemplate rabbitTemplate, UserEventsPublisher userEventsPublisher) {
        this.userRepository = userRepository;
        this.rabbitTemplate = rabbitTemplate;
        this.userEventsPublisher = userEventsPublisher;
    }

    public User getUser(Long id) {
        Optional<User> optionalUser = userRepository.findById(id);

        if(!optionalUser.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found for id " + id);
        }

        User user = optionalUser.get();

        return user;
    }

    public User register(RegisterDto request) {

        if (request.getPassword().length() < 6) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Password must be at least 6 characters long");
        }

        if (!request.getPassword().equals(request.getConfirmPassword())) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Passwords do not match");
        }

        if (!isEmailValid(request.getEmail())) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Email is not in valid format");
        }

        //create a new user
        User user = new User();
        user.setUsername(request.getUsername());
        user.setEmail(request.getEmail());
        user.setPassword(request.getPassword());
        user =  userRepository.save(user);

        //publish event
        userEventsPublisher.publishUserCreatedEvent(user.getId());

        return user;
    }

    public User authenticate(AuthenticateDto request) {
        User user = userRepository.findByEmail(request.getEmail());

        if (user == null) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Unable to find an account associated with the provided username");
        }

        if (!user.getPassword().equals(request.getPassword())) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "The password you entered is incorrect");
        }

        return user;
    }

    public void updateUser(Long id, User updatedUser) {
        Optional<User> optionalUser = userRepository.findById(id);

        if(!optionalUser.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found for id" + id);
        }

        User user = optionalUser.get();

        user.setUsername(updatedUser.getUsername());
        user.setGender(updatedUser.getGender());
        String updatedEmail = updatedUser.getEmail();

        if (isEmailValid(updatedEmail)) {
            user.setEmail(updatedEmail);
        } else {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Email not in valid format");
        }
        if (updatedUser.getPassword() != null) {
            if (updatedUser.getPassword().length() < 6) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Password must be at least 6 characters");
            } else {
                user.setPassword(updatedUser.getPassword());
            }
        }
        user.setContact(updatedUser.getContact());

        userRepository.save(user);
    }

    public void deleteUser(Long id) {

        try {
            userRepository.deleteById(id);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found for id " + id);
        }

        //publish event
        userEventsPublisher.publishUserDeletedEvent(id);
    }

    //helper methods
    private boolean isEmailValid(String email) {
        String emailRegex = "^[A-Za-z0-9+_.-]+@(.+)$";
        Pattern pattern = Pattern.compile(emailRegex);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }


}
