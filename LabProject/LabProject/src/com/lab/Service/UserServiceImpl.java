/**
 * 
 */
package com.lab.Service;

import javax.annotation.Resource;

import com.lab.DAO.UserDao;
import com.lab.Entity.Users;

/**
 * @author Administrator
 * 
 */
public class UserServiceImpl implements UserService {

	@Resource
	UserDao userDao;

	public Users insertUser(Users user) {

		return userDao.insertUser(user);
	}

	public Users updateUser(Users user) {

		return userDao.updateUser(user);
	}

	public void deleteUser(Users user) {

		userDao.deleteUser(user);

	}

	public boolean searchUserByNameAndPW(String name,String pw) {
		
		return userDao.searchUserByNameAndPW(name,pw);
	}

}
