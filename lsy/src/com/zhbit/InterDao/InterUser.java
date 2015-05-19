package com.zhbit.InterDao;

import java.util.List;

import com.zhbit.entity.User;

public interface InterUser 
{
	boolean isExist(User user);  // 判断用户是否存在
}
