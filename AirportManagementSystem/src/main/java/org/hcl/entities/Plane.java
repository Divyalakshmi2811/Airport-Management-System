package org.hcl.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity
public class Plane {

	@Id
	
	private int planeid;
	 @Size(min=1,message="Please enter planename")
	private String planename;
	
	private int seats;
	 @Size(min=1,message="Please enter planetype")
	private String type;
	 
	 public Plane()
	 {
		 
	 }
	
	public Plane(int planeid, String planename, int seats, String type) {
		super();
		this.planeid = planeid;
		this.planename = planename;
		this.seats = seats;
		this.type = type;
	}

	public int getPlaneid() {
		return planeid;
	}

	public void setPlaneid(int planeid) {
		this.planeid = planeid;
	}

	public String getPlanename() {
		return planename;
	}

	public void setPlanename(String planename) {
		this.planename = planename;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	

}