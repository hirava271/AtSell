package VO;

import java.io.Serializable;

public class DclothVO implements Serializable{
	
	private String item_type;
	private int cloth_id;
	private categoryVO catVO;
	private subcategoryVO subcatVO;
	private int length;
	private int price;
	private DmaterialVO material;
	private DneckVO neck;
	private DSleevesVO sleeve;
	private String product_name;
	private String product_description;
	private registrationVO regVoObj;
	
	public int getCloth_id() {
		return cloth_id;
	}
	public void setCloth_id(int cloth_id) {
		this.cloth_id = cloth_id;
	}
	public categoryVO getCatVO() {
		return catVO;
	}
	public void setCatVO(categoryVO catVO) {
		this.catVO = catVO;
	}
	public subcategoryVO getSubcatVO() {
		return subcatVO;
	}
	public void setSubcatVO(subcategoryVO subcatVO) {
		this.subcatVO = subcatVO;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public DmaterialVO getMaterial() {
		return material;
	}
	public void setMaterial(DmaterialVO material) {
		this.material = material;
	}
	public DneckVO getNeck() {
		return neck;
	}
	public void setNeck(DneckVO neck) {
		this.neck = neck;
	}
	public DSleevesVO getSleeve() {
		return sleeve;
	}
	public void setSleeve(DSleevesVO sleeve) {
		this.sleeve = sleeve;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public String getItem_type() {
		return item_type;
	}
	public void setItem_type(String item_type) {
		this.item_type = item_type;
	}
	public registrationVO getRegVoObj() {
		return regVoObj;
	}
	public void setRegVoObj(registrationVO regVoObj) {
		this.regVoObj = regVoObj;
	}
	
	
	
	
}
