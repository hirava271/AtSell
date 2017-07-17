package VO;

import java.io.Serializable;

public class DcolorFileVO implements Serializable {
	
	 private int file_id;
	 private String path;
	 private String color_code;
	 private DclothVO clothObj;
	public int getFile_id() {
		return file_id;
	}
	public void setFile_id(int file_id) {
		this.file_id = file_id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getColor_code() {
		return color_code;
	}
	public void setColor_code(String color_code) {
		this.color_code = color_code;
	}
	public DclothVO getClothObj() {
		return clothObj;
	}
	public void setClothObj(DclothVO clothObj) {
		this.clothObj = clothObj;
	}
	
	
}
