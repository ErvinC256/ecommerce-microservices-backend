package com.example.userservice.service;

import com.example.userservice.model.Address;
import com.example.userservice.model.User;
import com.example.userservice.repository.AddressRepository;
import com.example.userservice.repository.UserRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class AddressService {

    private final AddressRepository addressRepository;
    private final UserRepository userRepository;

    public AddressService(AddressRepository addressRepository, UserRepository userRepository) {
        this.addressRepository = addressRepository;
        this.userRepository = userRepository;
    }

    public List<Address> getAddresses(Long userId) {

        checkIfUserExist(userId);

        List<Address> addresses = addressRepository.findAllByUserId(userId);

        return addresses;
    }

    public List<Address> getPrimaryAddresses(Long userId) {

        checkIfUserExist(userId);

        List<Address> addresses = new ArrayList<>();

        addressRepository.findAllByUserId(userId).forEach(address -> {
            if (address.isPrimary()) {
                addresses.add(address);
            }
        });

        return addresses;
    }

    public Address addAddress(Long userId, Address newAddress) {

        User user = checkIfUserExist(userId);

        if (newAddress.isPrimary()) {
            user.getAddresses().forEach(address -> {
                address.setPrimary(false);
            });
        }

        //create a new address
        Address address = new Address();

        address.setStreetAddress(newAddress.getStreetAddress());
        address.setCity(newAddress.getCity());
        address.setZipcode(newAddress.getZipcode());
        address.setState(newAddress.getState());
        address.setPrimary(newAddress.isPrimary());
        address.setUser(user);

        return addressRepository.save(address);
    }

    public void updateAddress(Long userId, Long addressId, Address updatedAddress) {

        User user = checkIfUserExist(userId);

        //fetch the existing address
        Optional<Address> optionalAddress = addressRepository.findById(addressId);

        if (!optionalAddress.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Address not found for id " + addressId);
        }

        if (updatedAddress.isPrimary()) {
            user.getAddresses().forEach(address -> {
                address.setPrimary(false);
            });
        }

        Address existingAddress = optionalAddress.get();

        //update the fields you want to change
        existingAddress.setStreetAddress(updatedAddress.getStreetAddress());
        existingAddress.setCity(updatedAddress.getCity());
        existingAddress.setZipcode(updatedAddress.getZipcode());
        existingAddress.setState(updatedAddress.getState());
        existingAddress.setPrimary(updatedAddress.isPrimary());

        //save the updated address
        addressRepository.save(existingAddress);
    }

    public void deleteAddress(Long userId, Long addressId) {

        checkIfUserExist(userId);

        //delete address
        try {
            addressRepository.deleteById(addressId);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Address not found for id " + addressId);
        }

    }

    private User checkIfUserExist(Long userId) {
        //user logic
        Optional<User> optionalUser = userRepository.findById(userId);

        if (!optionalUser.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found for id " + userId);
        }

        User user = optionalUser.get();

        return user;
    }
}

