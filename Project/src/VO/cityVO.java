package VO;

import java.io.Serializable;

public class cityVO implements Serializable{
	
	private int city_id;
	private String city_name;
	private String city_description;
	private stateVO stateObj;
	private countryVO countryObj;
	
	public int getCity_id() {
		return city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}
	
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	
	public String getCity_description() {
		return city_description;
	}
	public void setCity_description(String city_description) {
		this.city_description = city_description;
	}
	
	public stateVO getStateObj() {
		return stateObj;
	}
	public void setStateObj(stateVO stateObj) {
		this.stateObj = stateObj;
	}
	
	public countryVO getCountryObj() {
		return countryObj;
	}
	public void setCountryObj(countryVO countryObj) {
		this.countryObj = countryObj;
	}
	
}
