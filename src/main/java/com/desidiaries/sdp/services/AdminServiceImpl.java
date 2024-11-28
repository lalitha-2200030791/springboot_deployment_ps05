package com.desidiaries.sdp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desidiaries.sdp.model.Admin;
import com.desidiaries.sdp.model.User;
import com.desidiaries.sdp.repository.AdminRepository;
import com.desidiaries.sdp.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AdminRepository adminRepository;

	@Override
	public List<User> viewAllUsers() {
		return userRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
	}

}
