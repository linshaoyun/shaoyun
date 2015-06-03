/**
 * 
 */
package com.lab.DAO;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lab.Entity.Users;

/**
 * @author Administrator
 * 
 */
@Transactional
public class UserDaoImpl implements UserDao {

	@Resource
	private SessionFactory sessionFactory;

	public Users insertUser(Users user) {

		sessionFactory.getCurrentSession().save(user);
		return user;
	}

	public Users updateUser(String ID, Users user) {
		Query query = sessionFactory.getCurrentSession().createQuery("Update Users as u set u.userName = ?, u.userAge=?,u.userSex=?,u.userPhone=?,u.userEmail=? where userID=?");
		query.setParameter(0, user.getUserName());		
		query.setParameter(1, user.getUserAge());
		query.setParameter(2, user.getUserSex());
		query.setParameter(3, user.getUserPhone());
		query.setParameter(4, user.getUserEmail());
		query.setParameter(5, ID);
		int n=query.executeUpdate();
		System.out.println(n);
		return null;
	}

	public void deleteUser(String ID) {
		// TODO Auto-generated method stub
		
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.zhbit.bbs.dao.UserDao#selectUser(java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	@SuppressWarnings("unchecked")
	public List<Users> searchUserByNameAndPW(String name,String pw) {

		Query query = sessionFactory.getCurrentSession().createQuery("from Users as u where u.userName=? and u.userPwd=? ");
		query.setParameter(0, name);
		query.setParameter(1, pw);

		return query.list();
	}

	public List<Users> SelectUserInfo(String ID) {
		Query query = sessionFactory.getCurrentSession().createQuery("from Users as u where u.userID=?");
		query.setParameter(0, ID);
		return query.list();
	}

	public boolean UpdateUserPwd(String ID, String userPwd) {
		// TODO Auto-generated method stub
		return false;
	}

}
