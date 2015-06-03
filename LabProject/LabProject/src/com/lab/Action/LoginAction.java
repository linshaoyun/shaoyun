/**
 * 
 */
package com.lab.Action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;

import com.lab.Entity.Users;
import com.lab.Service.UserService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 * 
 */
public class LoginAction extends ActionSupport implements SessionAware{
	
	@Resource
	private UserService userService;
	
	Map<String, Object> session;
	
	private String username;
	// 定义登录名称属性
	private String password;

	// 定义登录密码属性

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute() throws Exception {

		List<Users> userList = userService.searchUserByNameAndPW(username, password);
		if(userList.size()!= 0){
							
			System.out.println(userList.get(0).getUserId()+"   "+userList.get(0).getUserName());
			session.put("UserID", userList.get(0).getUserId());	
			
			return "success"; 
		}	
		else
			return "login"; 
	}

	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}


}
