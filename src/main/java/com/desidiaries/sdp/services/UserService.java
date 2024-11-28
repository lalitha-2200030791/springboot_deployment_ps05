package com.desidiaries.sdp.services;

import com.desidiaries.sdp.model.User;

public interface UserService {

	 public String userRegistration(User user);
	 public User checkUserLogin(String email,String  password);
	 void updateUser(User user);
}
