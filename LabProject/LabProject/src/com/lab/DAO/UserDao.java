/**
 * 
 */
package com.lab.DAO;

import com.lab.Entity.Users;

/**
 * @author Administrator
 * 
 */
public interface UserDao {
	// insert User record.
	public Users insertUser(Users user);

	public Users updateUser(Users user);

	public void deleteUser(Users user);

	public boolean searchUserByNameAndPW(String name,String pw);
}
