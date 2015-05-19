package com.zhbit.action;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;

public class FileUpLoadAction {

	private String title; // 文件标题
	private File file; // 文件域
	private String fileContentType; // 文件类型
	private String fileFileName; // 文件名
	private String savePath; // 上传地址

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	// 返回保存地址
	public String getSavePath() throws Exception {
		return "E:\\myeclipse\\lsy";
	}

	public String execute() throws Exception {
		// 以服务器的文件保存地址的原文件名建立上传文件输出流
		System.out.println(this.getTitle());
		System.out.println(this.getSavePath()+ this.getFileFileName());		
		FileOutputStream fos = new FileOutputStream(this.getSavePath() + "\\"
				+ this.getFileFileName());
		// 以上传文件建立文件输入流
		FileInputStream fis = new FileInputStream(this.getFile());
		// 将上传文件内容写入服务器
		byte[] b = new byte[1024];
		int len = 0;
		while ((len = fis.read(b)) > 0) {
			fos.write(b, 0, len);
		}
		ActionContext.getContext().put("upload", this);

		return "success";
	}
}
