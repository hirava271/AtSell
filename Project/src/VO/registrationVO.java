package VO;

import java.io.Serializable;

public class registrationVO implements Serializable{
	private int designer_user_id;
	private String user_name;
	private String display_name;
	private Long contact_number;
	private loginVO loginVoObj;
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getDisplay_name() {
		return display_name;
	}
	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}
	public Long getContact_number() {
		return contact_number;
	}
	public void setContact_number(Long contact_number) {
		this.contact_number = contact_number;
	}
	public loginVO getLoginVoObj() {
		return loginVoObj;
	}
	public void setLoginVoObj(loginVO loginVoObj) {
		this.loginVoObj = loginVoObj;
	}
	public int getDesigner_user_id() {
		return designer_user_id;
	}
	public void setDesigner_user_id(int designer_user_id) {
		this.designer_user_id = designer_user_id;
	}
}
