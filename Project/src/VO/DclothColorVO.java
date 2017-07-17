package VO;

import java.io.Serializable;

public class DclothColorVO implements Serializable{
	private int cloth_colour_id;
	private DcolourVO colorVoObj ;
	private DclothVO clothVoObj;
	
	public int getCloth_colour_id() {
		return cloth_colour_id;
	}
	public void setCloth_colour_id(int cloth_colour_id) {
		this.cloth_colour_id = cloth_colour_id;
	}
	public DcolourVO getColorVoObj() {
		return colorVoObj;
	}
	public void setColorVoObj(DcolourVO colorVoObj) {
		this.colorVoObj = colorVoObj;
	}
	public DclothVO getClothVoObj() {
		return clothVoObj;
	}
	public void setClothVoObj(DclothVO clothVoObj) {
		this.clothVoObj = clothVoObj;
	}
	
	
}
