package com.zhbit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhbit.biz.*;

public class ReleaseNoticeServlet extends HttpServlet {

	public ReleaseNoticeServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		request.setCharacterEncoding("utf-8");
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		 String RelTime=format.format(new Date());
		 String RelMan=request.getParameter("RelMan");
		 RelMan=new String(RelMan.getBytes("ISO-8859-1"),"utf-8");
		 String Title=request.getParameter("Title");
		 Title=new String(Title.getBytes("ISO-8859-1"),"utf-8");
		 String Content=request.getParameter("Content");
		 Content=new String(Content.getBytes("ISO-8859-1"),"utf-8");
		 System.out.println(RelMan+RelTime+Title+Content);
		 AlterNotice  an=new AlterNotice();
		 int judge=an.InsertNoticeData(Title, RelMan, RelTime, Content);
		 //System.out.println(judge);
		 if(judge==1){
		 request.setAttribute("display","true");
		 request.getRequestDispatcher("AddNote.jsp").forward(request, response);
		 }else{
			 request.setAttribute("display","false");
			 request.getRequestDispatcher("AddNote.jsp").forward(request, response);
		 }
	}
		 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
