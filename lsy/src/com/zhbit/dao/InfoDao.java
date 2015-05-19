package com.zhbit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.zhbit.entity.User;

public class InfoDao {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public ArrayList selectUserInformation(String userName ,String userPw){
		con=BaseDao.getConnection();
		ArrayList list=new ArrayList();
		try{
			ps=con.prepareStatement("select * from [dbo].[user] where userName='"+userName+"' and userPw='"+userPw+"'");
			rs=ps.executeQuery();
			while(rs.next()){
				User users=new User();
				users.setUserName(rs.getString("userName"));
				users.setRealName(rs.getString("realName"));
				users.setPersonDes(rs.getString("personalDes"));
				users.setWorkUnits(rs.getString("workUnits"));
				users.setPosition(rs.getString("position"));
				users.setUserSex(rs.getString("userSex"));
				users.setUserPhone(rs.getString("userPhone"));
				users.setUserEmail(rs.getString("userEmail"));
				users.setPersonalWeb(rs.getString("personalWeb"));
				users.setUserType(rs.getString("userType"));
				list.add(users);
			}
			con.close();
			ps.close();
			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}
		return list;
		}
}
