package VO;

import java.io.Serializable;

public class DcolourVO implements Serializable{
	
	private int colour_id;
	private String colour;
	private String colour_description;
	public int getColour_id() {
		return colour_id;
	}
	public void setColour_id(int colour_id) {
		this.colour_id = colour_id;
	}
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public String getColour_description() {
		return colour_description;
	}
	public void setColour_description(String colour_description) {
		this.colour_description = colour_description;
	}
	
}
