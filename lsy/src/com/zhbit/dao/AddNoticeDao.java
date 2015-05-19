package com.zhbit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddNoticeDao {

	public int  AlterNoticeData(String Title,String RelMan,String RelTime,String Content){
			
			Connection con=BaseDao.getConnection();
			try{
				// System.out.println(RelMan+RelTime+Title+Content);
				PreparedStatement stmt=null;
				int rs;
			     String sql="exec  Add_notice '"+Title+"','"+100001+"','"+RelTime+"','"+Content+"',null";
				//String sql="select * from notice";
				stmt=con.prepareStatement(sql);
				rs=stmt.executeUpdate();
			    if(rs>0){
					return 1;
				}else{
					return 0;
				}
			}catch(SQLException e){
				e.printStackTrace();
				return 0;
			}
			
		}
}
