package com.zhbit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AlterInfoDao {
	
public int  InsertNoticeData(String userName,String realName,String userPhone,String personalDes,
		String workUnits,String position,String userSex,String userEmail,String personalWeb ){
		
		Connection con=BaseDao.getConnection();
		try{
			// System.out.println(RelMan+RelTime+Title+Content);
			PreparedStatement stmt=null;
			int rs;
			String sql="update [dbo].[user] set userName='"+userName+"',userPhone='"+userPhone+"',userSex='"+userSex+"',userEmail='"+userEmail+"',realName='"+realName+"',personalDes='"+personalDes+"',workUnits='"+workUnits+"',position='"+position+"',personalWeb='"+personalWeb+"' where userName='"+userName+"'";
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
