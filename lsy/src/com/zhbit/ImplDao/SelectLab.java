package com.zhbit.ImplDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SelectLab {
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
	public ArrayList labData(){
		ArrayList l=new ArrayList();
		con=BaseDao.getConnection();
		try {
			stmt=con.createStatement();
			String sql="select * from lab";
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				ArrayList line=new ArrayList();
				for(int i = 1;i<6;i++){
				line.add(rs.getObject(i+1));
				}
				l.add(line);
			}
			stmt.close();
			con.close();
			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return l;		
	}
}
