package com.zhbit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhbit.dao.AlterInfoDao;

public class AlterInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AlterInfoServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		System.out.println("123");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		String userName=request.getParameter("userName");
		String userPhone=request.getParameter("userPhone");
		String realName=request.getParameter("realName");
		String personalDes=request.getParameter("personalDes");
		String workUnits=request.getParameter("workUnits");
		String position=request.getParameter("position");
		String userSex=request.getParameter("userSex");
		String userEmail=request.getParameter("userEmail");
		String personalWeb=request.getParameter("personalWeb");
		int aa;
		if(userName.equals("")||userSex.equals("")||realName.equals("")){
			aa=0;
		}else{
		AlterInfoDao alterInfo=new AlterInfoDao();
		 aa=alterInfo.InsertNoticeData(userName, realName, userPhone, personalDes, workUnits, position, userSex, userEmail, personalWeb);
		System.out.println("456");
		}
		if(aa==0){
			request.setAttribute("display", "false");
			request.getRequestDispatcher("profile.jsp").forward(request, response);
		}else if(aa==1){
			request.setAttribute("display", "true");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}
}
