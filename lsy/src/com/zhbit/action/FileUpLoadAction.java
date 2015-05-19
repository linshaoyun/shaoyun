package com.zhbit.action;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;

public class FileUpLoadAction {

	private String title; // �ļ�����
	private File file; // �ļ���
	private String fileContentType; // �ļ�����
	private String fileFileName; // �ļ���
	private String savePath; // �ϴ���ַ

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

	// ���ر����ַ
	public String getSavePath() throws Exception {
		return "E:\\myeclipse\\lsy";
	}

	public String execute() throws Exception {
		// �Է��������ļ������ַ��ԭ�ļ��������ϴ��ļ������
		System.out.println(this.getTitle());
		System.out.println(this.getSavePath()+ this.getFileFileName());		
		FileOutputStream fos = new FileOutputStream(this.getSavePath() + "\\"
				+ this.getFileFileName());
		// ���ϴ��ļ������ļ�������
		FileInputStream fis = new FileInputStream(this.getFile());
		// ���ϴ��ļ�����д�������
		byte[] b = new byte[1024];
		int len = 0;
		while ((len = fis.read(b)) > 0) {
			fos.write(b, 0, len);
		}
		ActionContext.getContext().put("upload", this);

		return "success";
	}
}
