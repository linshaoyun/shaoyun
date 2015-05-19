package com.zhbit.servlet;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.zhbit.biz.LabBiz;
public class LabServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		LabBiz lb=new LabBiz();
		if(!"".equals(name)){
			List list=lb.labData();  
			if(!list.isEmpty()){	
				request.getSession().setAttribute("list", list);
				request.getRequestDispatcher("index.jsp").forward(request,response);		
			}
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		this.doGet(request, response);
	}
}
