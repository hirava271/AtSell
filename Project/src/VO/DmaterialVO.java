package VO;

import java.io.Serializable;

public class DmaterialVO implements Serializable{
	
	private int material_id;
	private String material;
	private String material_description;
	public int getMaterial_id() {
		return material_id;
	}
	public void setMaterial_id(int material_id) {
		this.material_id = material_id;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getMaterial_description() {
		return material_description;
	}
	public void setMaterial_description(String material_description) {
		this.material_description = material_description;
	}
	
	
}
