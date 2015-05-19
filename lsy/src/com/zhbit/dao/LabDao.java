package com.zhbit.dao;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.zhbit.entity.CourseTable;
import com.zhbit.entity.Lab;


public class LabDao {

	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
	public List labData(){
		List list=new ArrayList();
		con=BaseDao.getConnection();
		try {
			stmt=con.createStatement();
			String sql="select labID,labName,labType,labSize,labAddress,userID,memo from lab";
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				Lab lab=new Lab();
				lab.setLabID(rs.getInt("labID"));
				lab.setLabName(rs.getString("labName"));
				lab.setLabType(rs.getString("labType"));
				lab.setLabSize(rs.getInt("labSize"));
				lab.setLabAddress(rs.getString("labAddress"));
				lab.setUserID(rs.getInt("userID"));
				lab.setMemo(rs.getString("memo"));
			    list.add(lab);  //把ct对象添加到list集合里面去
			}
			stmt.close();
			con.close();
			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;		
	}
}
