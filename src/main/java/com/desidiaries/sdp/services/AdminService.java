package com.desidiaries.sdp.services;

import java.util.List;

import com.desidiaries.sdp.model.Admin;
import com.desidiaries.sdp.model.User;

public interface AdminService {

	public List<User> viewAllUsers();
	public Admin checkAdminLogin(String uname,String pwd);
}
