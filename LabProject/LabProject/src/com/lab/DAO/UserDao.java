/**
 * 
 */
package com.lab.DAO;

import java.util.List;

import com.lab.Entity.Users;

/**
 * @author Administrator
 * 
 */
public interface UserDao {
	// insert User record.	
	
	public Users insertUser(Users user);

	public Users updateUser(String ID, Users user);

	public void deleteUser(String ID);

	public List<Users> searchUserByNameAndPW(String name,String pw);
	
	public List<Users> SelectUserInfo(String ID);
	
	public boolean UpdateUserPwd(String ID,String userPwd);
	
}
