package com.errandrunner.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="erunner")
public class ErunnerModel implements Model {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name="id")
	private int id;
	
	@Column(name="aadhar")
	private String aadhar;
	
	@Column(name="available")
	private short available;
	
	@Column(name="jobs")
	private String jobs;
	
	@OneToOne
	@JoinColumn(name="userid") 
	private UserModel user;
	
	
	 
	
	public ErunnerModel() {
		super();
	}

	public ErunnerModel(int id, String aadhar, short available, String jobs, UserModel user) {
		super();
		this.id = id;
		this.aadhar = aadhar;
		this.available = available;
		this.jobs = jobs;
		this.user = user;
	}
	
	public ErunnerModel(String aadhar,String jobs, UserModel user) {
		super();
		this.aadhar = aadhar;
		this.available = 1;
		this.jobs = jobs;
		this.user = user;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public short getAvailable() {
		return available;
	}
	public void setAvailable(short available) {
		this.available = available;
	}
	public String getJobs() {
		return jobs;
	}
	public void setJobs(String jobs) {
		this.jobs = jobs;
	}
	public UserModel getUser() {
		return user;
	}
	public void setUser(UserModel user) {
		this.user = user;
	}
}
