package VO;

import java.io.Serializable;

public class packageFileUploadVO implements Serializable{
	private int attachment_id;
	private String path;
	private packageVO packageObj;
	
	
	public int getAttachment_id() {
		return attachment_id;
	}
	public void setAttachment_id(int attachment_id) {
		this.attachment_id = attachment_id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public packageVO getPackageObj() {
		return packageObj;
	}
	public void setPackageObj(packageVO packageObj) {
		this.packageObj = packageObj;
	}

}
