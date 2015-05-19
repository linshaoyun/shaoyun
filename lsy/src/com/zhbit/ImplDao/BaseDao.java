package com.zhbit.ImplDao;

import java.sql.*;
public class BaseDao 
{
	private static Connection con;

	static
	{
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();			
		}
		
	}
	
	public static Connection getConnection()
	{
		
		try {
			con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=LAB","sa","1234");
            System.out.println("数据库连接成功");
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		
		return con;
	}


	public static void closeAll(ResultSet rs,PreparedStatement ps,Connection con){
		if(rs!=null)
		{
			try {
				rs.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		if(ps!=null)
		{
			try {
				ps.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
		if(con!=null)
		{
			try {
				con.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}

}





