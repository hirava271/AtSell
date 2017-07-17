package VO;

import java.io.Serializable;

public class DphotogallaryVO implements Serializable{
	
	private int photo_id;
	private String path;
	public int getPhoto_id() {
		return photo_id;
	}
	public void setPhoto_id(int photo_id) {
		this.photo_id = photo_id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
}
