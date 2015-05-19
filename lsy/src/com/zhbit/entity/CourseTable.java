package com.zhbit.entity;

public class CourseTable {
	
	String labName;  //实验室名称
	int labSize;   //实验室座位数
	int weekID;   //星期几
	String timeName;	  //时间段
	String courseName;   //课程名
	String dateID;   //周数
	String courseClass;  //班级信息
	String userName;   //任课老师的名字
	
	public String getLabName() {
		return labName;
	}
	public void setLabName(String labName) {
		this.labName = labName;
	}
	public int getLabSize() {
		return labSize;
	}
	public void setLabSize(int labSize) {
		this.labSize = labSize;
	}
	public int getWeekID() {
		return weekID;
	}
	public void setWeekID(int weekID) {
		this.weekID = weekID;
	}
	public String getTimeName() {
		return timeName;
	}
	public void setTimeName(String timeName) {
		this.timeName = timeName;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getDateID() {
		return dateID;
	}
	public void setDateID(String dateID) {
		this.dateID = dateID;
	}
	public String getCourseClass() {
		return courseClass;
	}
	public void setCourseClass(String courseClass) {
		this.courseClass = courseClass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
}
