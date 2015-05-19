package com.zhbit.dao;

import java.sql.*;
import java.util.*;
import java.util.Date;

import com.zhbit.dao.BaseDao;
import com.zhbit.entity.User;

public class UserDao {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	  /**
	   * 判断用户是否存在
	   */
	public boolean isExist(String userName,String userPw) {
			boolean flag=false;	
			con=BaseDao.getConnection();
			try {
				ps=con.prepareStatement("select * from [dbo].[user] where username=? and userpw=?");
			
				ps.setString(1,userName);
				ps.setString(2,userPw);
				rs=ps.executeQuery();
				if(rs.next())
				{
					  flag=true;
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally
			{
				BaseDao.closeAll(rs, ps, con);
			}
			 return flag;
		}	
}
