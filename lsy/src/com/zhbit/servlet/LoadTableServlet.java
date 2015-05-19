package com.zhbit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhbit.biz.ImportExecl;

public class LoadTableServlet extends HttpServlet {

	public LoadTableServlet() {
		super();
	}


	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		ImportExecl poi = new ImportExecl(); 
		String fileName=request.getParameter("filename");
		System.out.println("文件名为"+request.getParameter("path"));		
		System.out.println("文件名为"+fileName);		
		//List<List<String>> list = poi.read(fileName);
		//System.out.println(list);
		//if(list==null){
			//request.setAttribute("show","false");
			//request.getRequestDispatcher("form_component.jsp").forward(request,response);
			
		//}else{		
			//request.setAttribute("show", "true");
			//request.getRequestDispatcher("form_component.jsp").forward(request, response);
		//}
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
