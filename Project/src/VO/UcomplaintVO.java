package VO;

import java.io.Serializable;

public class UcomplaintVO implements Serializable{
	private int complaint_id;
	private String complaint;
	private String status;
	private UregistrationVO buyer_user_id;
	public int getComplaint_id() {
		return complaint_id;
	}
	public void setComplaint_id(int complaint_id) {
		this.complaint_id = complaint_id;
	}
	public String getComplaint() {
		return complaint;
	}
	public void setComplaint(String complaint) {
		this.complaint = complaint;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public UregistrationVO getBuyer_user_id() {
		return buyer_user_id;
	}
	public void setBuyer_user_id(UregistrationVO buyer_user_id) {
		this.buyer_user_id = buyer_user_id;
	}
	
}
