package com.zhbit.biz;

import java.util.List;

import com.zhbit.entity.User;
import com.zhbit.dao.UserDao;
public class UserBiz {
	UserDao ud =new UserDao();
	public boolean isExist(String userName,String userPw){			
			return ud.isExist(userName,userPw);
	}
}
