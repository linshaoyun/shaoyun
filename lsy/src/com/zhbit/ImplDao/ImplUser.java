package com.zhbit.ImplDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.zhbit.InterDao.InterUser;
import com.zhbit.entity.User;
public class ImplUser implements InterUser {

	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	  /**
	   * 判断用户是否存在
	   */
	public boolean isExist(User user) {
			boolean flag=false;
			con=BaseDao.getConnection();
			try {
				ps=con.prepareStatement("select * from [LAB].[dbo].[user] where userName=? and userPw=?");
				ps.setString(1, user.getUserName());
				ps.setString(2, user.getUserPw());
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
				BaseDao.closeAll(rs, ps, con);//关闭数据库连接
			}
			 return flag;
		}	
}