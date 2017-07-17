package VO;

import java.io.Serializable;

public class DneckVO implements Serializable{
	
	private int neck_id;
	private String neck_type;
	private String neck_description;
	public int getNeck_id() {
		return neck_id;
	}
	public void setNeck_id(int neck_id) {
		this.neck_id = neck_id;
	}
	public String getNeck_type() {
		return neck_type;
	}
	public void setNeck_type(String neck_type) {
		this.neck_type = neck_type;
	}
	public String getNeck_description() {
		return neck_description;
	}
	public void setNeck_description(String neck_description) {
		this.neck_description = neck_description;
	}
	
}
