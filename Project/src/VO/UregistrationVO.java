package VO;

import java.io.Serializable;
import java.util.Date;

public class UregistrationVO implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int buyer_user_id;
	private String gender;
	private String first_name;
	private String last_name;
	private Date date_of_birth;
	private loginVO loginVoObj;
	
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public Date getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public loginVO getLoginVoObj() {
		return loginVoObj;
	}
	public void setLoginVoObj(loginVO loginVoObj) {
		this.loginVoObj = loginVoObj;
	}
	public int getBuyer_user_id() {
		return buyer_user_id;
	}
	public void setBuyer_user_id(int buyer_user_id) {
		this.buyer_user_id = buyer_user_id;
	}
	

}
