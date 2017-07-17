package VO;

import java.io.Serializable;
import java.util.Date;

public class UaddToCartMstVO implements Serializable {
	private int cart_mst_id;
	private UregistrationVO buyer_user_id;
	private String shipping_address;
	private countryVO countryVO;
	private stateVO stateVO;
	private cityVO cityVO;
	private String cart_type;
	private Long contact_no;
	private Long zip_code;
	private String additional_info;
	private String date;
	public Long getContact_no() {
		return contact_no;
	}
	public void setContact_no(Long contact_no) {
		this.contact_no = contact_no;
	}
	public Long getZip_code() {
		return zip_code;
	}
	public void setZip_code(Long zip_code) {
		this.zip_code = zip_code;
	}
	public String getAdditional_info() {
		return additional_info;
	}
	public void setAdditional_info(String additional_info) {
		this.additional_info = additional_info;
	}
	public int getCart_mst_id() {
		return cart_mst_id;
	}
	public void setCart_mst_id(int cart_mst_id) {
		this.cart_mst_id = cart_mst_id;
	}
	public UregistrationVO getBuyer_user_id() {
		return buyer_user_id;
	}
	public void setBuyer_user_id(UregistrationVO buyer_user_id) {
		this.buyer_user_id = buyer_user_id;
	}
	public String getShipping_address() {
		return shipping_address;
	}
	public void setShipping_address(String shipping_address) {
		this.shipping_address = shipping_address;
	}
	public countryVO getCountryVO() {
		return countryVO;
	}
	public void setCountryVO(countryVO countryVO) {
		this.countryVO = countryVO;
	}
	public stateVO getStateVO() {
		return stateVO;
	}
	public void setStateVO(stateVO stateVO) {
		this.stateVO = stateVO;
	}
	public cityVO getCityVO() {
		return cityVO;
	}
	public void setCityVO(cityVO cityVO) {
		this.cityVO = cityVO;
	}
	public String getCart_type() {
		return cart_type;
	}
	public void setCart_type(String cart_type) {
		this.cart_type = cart_type;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String string) {
		this.date = string;
	}
	
}
