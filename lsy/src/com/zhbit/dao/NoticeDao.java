/**
 * 
 */
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
import com.zhbit.entity.Notice;


public class NoticeDao {

	
		private Connection con;
		private Statement stmt;
		private ResultSet rs;
		
		public ArrayList selectNotice(){
			ArrayList list=new ArrayList();
			con=BaseDao.getConnection();
			try {
				stmt=con.createStatement();
				String sql="select title,relTime from notice";
				rs=stmt.executeQuery(sql);
				while(rs.next())
				{
					 ArrayList line=new ArrayList();
					 Notice ct=new Notice();
					 ct.setTitle(rs.getString("title"));
					 //ct.setRelPeople(rs.getString("relPeople"));
					 ct.setRelTime(rs.getString("relTime"));
					 list.add(ct);
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
