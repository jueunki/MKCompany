package com.mk.dto;

public class MemberDTO {

	private String id;
	private String pwd;
	private String repwd;
	private String name;
	private String nickname;
	private String email;
	private int grade;	//일반 : 1 ,관리자 : 2 ,익명 : 0
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getRepwd() {
		return repwd;
	}
	public void setRepwd(String repwd) {
		this.repwd = repwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pwd=" + pwd + ", repwd=" + repwd + ", name=" + name + ", nickname=" + nickname
				+ ", email=" + email + ", grade=" + grade + "]";
	}
	
}
	
	
	
	
