package VO;

public class UfeedbackVO {
	private int feedback_id;
	private String feedback;
	private UregistrationVO buyer_user_id;
	public int getFeedback_id() {
		return feedback_id;
	}
	public void setFeedback_id(int feedback_id) {
		this.feedback_id = feedback_id;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public UregistrationVO getBuyer_user_id() {
		return buyer_user_id;
	}
	public void setBuyer_user_id(UregistrationVO buyer_user_id) {
		this.buyer_user_id = buyer_user_id;
	}
	
}
