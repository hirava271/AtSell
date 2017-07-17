package VO;

import java.io.Serializable;

public class UaddToCartVO implements Serializable {
	private int cart_id;
	private int cloth_id;
	private String product_name;
	private String path;
	private int price;
	private String size;
	private int quantity;
	private String color_code;
	private registrationVO designer_user_id;
	private UaddToCartMstVO cartMstVOObj;
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public int getCloth_id() {
		return cloth_id;
	}
	public void setCloth_id(int cloth_id) {
		this.cloth_id = cloth_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getColor_code() {
		return color_code;
	}
	public void setColor_code(String color_code) {
		this.color_code = color_code;
	}
	public UaddToCartMstVO getCartMstVOObj() {
		return cartMstVOObj;
	}
	public void setCartMstVOObj(UaddToCartMstVO cartMstVOObj) {
		this.cartMstVOObj = cartMstVOObj;
	}
	public registrationVO getDesigner_user_id() {
		return designer_user_id;
	}
	public void setDesigner_user_id(registrationVO designer_user_id) {
		this.designer_user_id = designer_user_id;
	}
	
}
