package com.errandrunner.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.tomcat.util.modeler.BaseModelMBean;
import org.hibernate.annotations.NamedQuery;

import com.errandrunner.models.Model;

@Entity
@Table(name="users")
@NamedQuery(name="get_user", query="from UserModel where phone= :phno")
public class UserModel implements Model{
 
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 @Column(name="id")
	 protected int id;
	 
	 @Column(name="name")
	 protected String name;
	 
	 @Column(name="email")
	 protected String email;
	 
	 @Column(name="phone")
	 protected String phone;
	 
	 @Column(name="password")
	 protected String password;
	 
	 @Column(name="userType")
	 protected String userType;
	
	
	public UserModel() {
		
	}
	
	public UserModel(int id, String name, String email, String phone, String password, String userType) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.userType = userType;
	}
	
	public UserModel(String name, String email, String phone, String password, String userType) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.userType = userType;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUserType() {
		return userType;
	}
	
	public void setUserType(String userType) {
		this.userType = userType;
	}
 

}