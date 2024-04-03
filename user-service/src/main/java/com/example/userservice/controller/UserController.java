package com.example.userservice.controller;

import com.example.userservice.dto.RegisterDto;
import com.example.userservice.dto.AuthenticateDto;
import com.example.userservice.model.Address;
import com.example.userservice.model.User;
import com.example.userservice.service.AddressService;
import com.example.userservice.service.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

    private final UserService userService;
    private final AddressService addressService;

    public UserController(UserService userService, AddressService addressService) {
        this.userService = userService;
        this.addressService = addressService;
    }

    @GetMapping("/{id}")
    public User getUser(@PathVariable Long id) {
        return userService.getUser(id);
    }

    @PostMapping("/register")
    public ResponseEntity<User> register(@RequestBody RegisterDto request) {

        User user = userService.register(request);
        return new ResponseEntity<>(user, HttpStatus.CREATED);
    }

    @PostMapping("/authenticate")
    public User authenticate(@RequestBody AuthenticateDto request) {
        return userService.authenticate(request);
    }

    @PutMapping("/{id}")
    public void updateUser(@PathVariable Long id, @RequestBody User updatedUser) {
        userService.updateUser(id, updatedUser);
    }

    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable Long id) {

        userService.deleteUser(id);

    }

    //addresses
    @GetMapping("/{userId}/addresses")
    public List<Address> getAddresses(@PathVariable Long userId,
                                      @RequestParam(required = false) boolean primary) {

        if (primary) {
            return addressService.getPrimaryAddresses(userId);
        } else {
            return addressService.getAddresses(userId);
        }

    }

    @PostMapping("/{userId}/addresses")
    public ResponseEntity<Address> addAddress(@PathVariable Long userId, @RequestBody Address newAddress) {
        Address address = addressService.addAddress(userId, newAddress);
        return new ResponseEntity<>(address, HttpStatus.CREATED);
    }

    @PutMapping("/{userId}/addresses/{addressId}")
    public void updateAddress(@PathVariable Long userId, @PathVariable Long addressId, @RequestBody Address updatedAddress) {
        addressService.updateAddress(userId, addressId, updatedAddress);
    }

    @DeleteMapping("/{userId}/addresses/{addressId}")
    public void deleteAddress(@PathVariable Long userId, @PathVariable Long addressId) {
        addressService.deleteAddress(userId, addressId);
    }

    //test
    @GetMapping("/test")
    public String hello() {
        return "Hello from UserController!";
    }
}


