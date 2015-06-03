/**
 * 
 */
package com.lab.Service;

import java.util.List;

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

	public List<Users> searchUserByNameAndPW(String name,String pw) {
		
		return userDao.searchUserByNameAndPW(name,pw);
	}

	public List<Users> SelectUserInfo(String ID) {
		// TODO Auto-generated method stub
		return userDao.SelectUserInfo(ID);
	}

	public boolean UpdateUserPwd(String ID, String userPwd) {
		// TODO Auto-generated method stub
		return userDao.UpdateUserPwd(ID, userPwd);
	}

	public Users updateUser(String ID, Users user) {
		// TODO Auto-generated method stub
		return userDao.updateUser(ID, user);
	}

	public void deleteUser(String ID) {
		// TODO Auto-generated method stub
		userDao.deleteUser(ID);
	}

}
