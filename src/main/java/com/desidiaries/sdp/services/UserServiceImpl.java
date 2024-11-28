package com.desidiaries.sdp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.desidiaries.sdp.model.User;
import com.desidiaries.sdp.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	 public User checkUserLogin(String email, String password) {
        return userRepository.checkUserLogin(email, password); // Calling the repository method

    }

    // Method to get user ID by email
    public Long findUserIdByEmail(String email) {
        return userRepository.findUserIdByEmail(email);
    }

    @Override
	public String userRegistration(User user) {
		userRepository.save(user);
		return "User Register Successfully";
	}
    @Override
    public void updateUser(User user) {
        // Assuming `userRepository` is a JPA repository or a data access object
        userRepository.save(user);
    }



}
