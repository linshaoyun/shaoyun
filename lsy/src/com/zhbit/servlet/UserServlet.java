package com.zhbit.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhbit.biz.UserBiz;
import com.zhbit.entity.User;


public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private User user;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {			
		request.setCharacterEncoding("utf-8");
		boolean flag;
		String userName = request.getParameter("userName");
		String userPw = request.getParameter("userPw");
		HttpSession session=request.getSession();
		request.getSession().setAttribute("userName", userName);
		request.getSession().setAttribute("userPw", userPw);
		System.out.println(userName);
		System.out.println(userPw);	
		UserBiz ub=new UserBiz();
		flag=ub.isExist(userName,userPw);
		System.out.println(flag);
		if(flag){
			System.out.println(flag);
			request.getRequestDispatcher("index.jsp").forward(request,response);	
		}else{
			String message="连接数据库错误！";
			request.setAttribute("message", message);			
			request.getRequestDispatcher("login.jsp").forward(request,response);	
		}				
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);		
	}
}
