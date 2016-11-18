package com.demo.project;

public class EmployeeVO {
	private String name;
	private Long id;
	private Long PhoneNumber;
	private String address;
	private String grade;
	private int flag;
	private String gender;
	
	public EmployeeVO(){
		
	}
	
	public EmployeeVO(String name, Long id, Long phoneNumber, String address,
			String grade, int flag, String gender) {
		super();
		this.name = name;
		this.id = id;
		PhoneNumber = phoneNumber;
		this.address = address;
		this.grade = grade;
		this.flag = flag;
		this.gender = gender;
	}


	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(Long phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
}
