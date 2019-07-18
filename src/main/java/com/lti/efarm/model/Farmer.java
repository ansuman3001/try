package com.lti.efarm.model;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.persistence.*;

@Entity
@Table(name="farmer_personal_details")
public class Farmer
{
	
@Id
@GeneratedValue(strategy = GenerationType.SEQUENCE,generator="farmid_generator")
@SequenceGenerator(name="farmid_generator",sequenceName="farmer_details100",allocationSize=1)
@PrimaryKeyJoinColumn
private int farmer_id;

@Column(name="fullname")
private String fullname;

@Column(name="contact")
private long   contact; 

@Column(name="email_id")
private String email_id;

@Column(name="house_no")
private String house_no;

@Column(name="city")
private String city;

@Column(name="state")
private String state;

@Column(name="country")
private String country;

@Column(name="pin_code")
private int pin_code; 

@Column(name="password")
private String password;


public String getPassword() {
	return password;
}
public void setPassword(String password) {
	
	Base64.Encoder encoder=Base64.getEncoder();
	String normalString=password;
	String encodedString=encoder.encodeToString(normalString.getBytes(StandardCharsets.UTF_8));
	this.password=encodedString;
	
}
public int getFarmer_id() {
	return farmer_id;
}
public void setFarmer_id(int farmer_id) {
	this.farmer_id = farmer_id;
}
public String getFullname() {
	return fullname;
}
public void setFullname(String fullname) {
	this.fullname = fullname;
}

public long getContact() {
	return contact;
}
public void setContact(long contact) {
	this.contact = contact;
}
public String getEmail_id() {
	return email_id;
}
public void setEmail_id(String email_id) {
	this.email_id = email_id;
}
public String getHouse_no() {
	return house_no;
}
public void setHouse_no(String house_no) {
	this.house_no = house_no;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public int getPin_code() {
	return pin_code;
}
public void setPin_code(int pin_code) {
	this.pin_code = pin_code;
}
@Override
public String toString() {
	return "Farmer [farmer_id=" + farmer_id + ", fullname=" + fullname + ", contact=" + contact + ", email_id="
			+ email_id + ", house_no=" + house_no + ", city=" + city + ", state=" + state + ", country=" + country
			+ ", pin_code=" + pin_code + "]";
}
}


