package com.zhbit.action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.ImplDao.ImplUser;
import com.zhbit.InterDao.InterUser;
import com.zhbit.biz.UserBiz;
import com.zhbit.entity.User;

public class UserLoginAction extends ActionSupport {
	
	private String userName;
	private String userPw;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}	
	
	public String execute()
	{
		System.out.println("123");
		boolean flag;//调用ImplUser类的isExist方法判断用户是否存在
		UserBiz ub=new UserBiz();
		flag=ub.isExist(this.userName,this.userPw);
		System.out.println(flag);
		System.out.println(this.userName+this.userPw);
		if(flag){
			System.out.println(flag);
			return "success";
		}else{
			String message="连接数据库错误！";
			return "failed";
		}
				
	}
	
}
