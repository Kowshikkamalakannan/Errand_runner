package com.errandrunner.models;

import com.mysql.cj.jdbc.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="cook")
public class CookModel implements Model {
	@Id
	@GeneratedValue
	 @Column(name="id")
	private int id;
	 
	@Column(name="address")
	private String address;
	
//	 @Column(name="addressProof")
//	private Blob addressProof;
	 
//	 @Column(name="verified")
//	private Short verified;
	
	@OneToOne
	@JoinColumn(name="userid") 
	private UserModel user;
	 
	protected CookModel() {
	}
	
	
	
	public CookModel(String address, UserModel user) {
		super();
		this.address = address;
//		this.addressProof = addressProof;
//		this.verified = 0;
		this.user = user;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
//	public Blob getAddressProof() {
//		return addressProof;
//	}
//	public void setAddressProof(Blob addressProof) {
//		this.addressProof = addressProof;
//	}
//	public Short getVerified() {
//		return verified;
//	}
//	public void setVerified(Short verified) {
//		this.verified = verified;
//	}
	public UserModel getUser() {
		return user;
	}
	public void setUser(UserModel user) {
		this.user = user;
	}
}
