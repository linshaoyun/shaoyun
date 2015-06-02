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

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.zhbit.bbs.dao.UserDao#updateUser(com.zhbit.bbs.domain.User)
	 */
	public Users updateUser(Users user) {
		System.out.println(user);
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return user;

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.zhbit.bbs.dao.UserDao#deleteUser(com.zhbit.bbs.domain.User)
	 */
	public void deleteUser(Users user) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.zhbit.bbs.dao.UserDao#selectUser(java.lang.String)
	 */
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	@SuppressWarnings("unchecked")
	public boolean searchUserByNameAndPW(String name,String pw) {
		boolean tap = false;

		Query query = sessionFactory.getCurrentSession().createQuery("from Users as u where u.userName=? and u.userPwd=? ");
		query.setParameter(0, name);
		query.setParameter(1, pw);
		if(query.list().size()!= 0){
			tap = true;
			
			List<Users> userList = query.list();
			System.out.println(userList.get(0));
	
		}	
		return tap;
	}

}
