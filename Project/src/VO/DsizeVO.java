package VO;

import java.io.Serializable;

public class DsizeVO implements Serializable{
	
	private int size_id;
	private String size;
	private String size_description;
	public int getSize_id() {
		return size_id;
	}
	public void setSize_id(int size_id) {
		this.size_id = size_id;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getSize_description() {
		return size_description;
	}
	public void setSize_description(String size_description) {
		this.size_description = size_description;
	}
	
}
