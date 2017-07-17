package VO;

import java.io.Serializable;

public class subcategoryVO implements Serializable{
	private int subcategory_id;
	private String subcategory_name;
	private String subcategory_description;
	private categoryVO catVO;
	
	public categoryVO getCatVO() {
		return catVO;
	}
	public void setCatVO(categoryVO catVO) {
		this.catVO = catVO;
	}
	public int getSubcategory_id() {
		return subcategory_id;
	}
	public void setSubcategory_id(int subcategory_id) {
		this.subcategory_id = subcategory_id;
	}
	public String getSubcategory_name() {
		return subcategory_name;
	}
	public void setSubcategory_name(String subcategory_name) {
		this.subcategory_name = subcategory_name;
	}
	public String getSubcategory_description() {
		return subcategory_description;
	}
	public void setSubcategory_description(String subcategory_description) {
		this.subcategory_description = subcategory_description;
	}
	

}
