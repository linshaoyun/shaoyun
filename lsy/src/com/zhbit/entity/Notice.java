package com.zhbit.entity;

public class Notice {
	String title;
	String relPeople;
	String  relTime;
	String content;
	String memo;
	public String getRelTime() {
		return relTime;
	}
	public void setRelTime(String relTime) {
		this.relTime = relTime;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRelPeople() {
		return relPeople;
	}
	public void setRelPeople(String relPeople) {
		this.relPeople = relPeople;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
}
