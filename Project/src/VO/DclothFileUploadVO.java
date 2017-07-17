package VO;

import java.io.Serializable;

public class DclothFileUploadVO implements Serializable{
	private int attachment_id;
	private String path;
	private DclothVO clothObj;
	
	
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
	public DclothVO getClothObj() {
		return clothObj;
	}
	public void setClothObj(DclothVO clothObj) {
		this.clothObj = clothObj;
	}
	
}
