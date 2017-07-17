package VO;

import java.io.Serializable;

public class packageVO implements Serializable {
	private int package_id;
	private String package_name;
	private String package_description;
	private int package_price;
	private int isActive;
	public int getPackage_price() {
		return package_price;
	}
	public void setPackage_price(int package_price) {
		this.package_price = package_price;
	}
	private String package_duration;
	
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	public int getPackage_id() {
		return package_id;
	}
	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}
	public String getPackage_name() {
		return package_name;
	}
	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}
	public String getPackage_description() {
		return package_description;
	}
	public void setPackage_description(String package_description) {
		this.package_description = package_description;
	}
	public String getPackage_duration() {
		return package_duration;
	}
	public void setPackage_duration(String package_duration) {
		this.package_duration = package_duration;
	}	
}
