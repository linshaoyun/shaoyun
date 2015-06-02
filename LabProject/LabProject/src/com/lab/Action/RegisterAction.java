package com.lab.Action;

import javax.annotation.Resource;

import com.lab.Entity.Users;
import com.lab.Service.UserService;

public class RegisterAction {

	private Users user;
	private String repassword;
	@Resource
	private UserService userService;
	
	
	public Users getUser() {
		return user;
	}



	public void setUser(Users user) {
		this.user = user;
	}



	public String getRepassword() {
		return repassword;
	}



	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}



	public UserService getUserService() {
		return userService;
	}



	public void setUserService(UserService userService) {
		this.userService = userService;
	}



	public String execute() throws Exception {
		System.out.println("走到这了。");
		System.out.println(user);
		System.out.println(repassword);		
		if(user.getUserPwd().equals(repassword)){
			System.out.println("走到这了。。。。");
			userService.insertUser(user);
			return "success";
		}
		else{
			return "register";
		}
	}
}
