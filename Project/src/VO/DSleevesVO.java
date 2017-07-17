package VO;

import java.io.Serializable;

public class DSleevesVO implements Serializable{
	private int sleeves_id;
	private String sleeves_type;
	private String sleeves_description;
	public int getSleeves_id() {
		return sleeves_id;
	}
	public void setSleeves_id(int sleeves_id) {
		this.sleeves_id = sleeves_id;
	}
	public String getSleeves_type() {
		return sleeves_type;
	}
	public void setSleeves_type(String sleeves_type) {
		this.sleeves_type = sleeves_type;
	}
	public String getSleeves_description() {
		return sleeves_description;
	}
	public void setSleeves_description(String sleeves_description) {
		this.sleeves_description = sleeves_description;
	}
	

}
