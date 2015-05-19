package com.zhbit.biz;

import java.util.List;

import com.zhbit.dao.LabDao;
import com.zhbit.entity.CourseTable;

public class LabBiz {
	
	LabDao ld =new LabDao();
	public List labData(){
		return ld.labData();
	}
}
