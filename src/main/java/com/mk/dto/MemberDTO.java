package com.mk.dto;

public class MemberDTO {
	private String id;
	private String pwd;
	private String repwd;
	private String name;
	private String nickname;
	private String addr1;
	private String addr2;
	private String email;
	private int grade;
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
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
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
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", email=" + email + ", grade="
				+ grade + "]";
	}




	//pstmt.setString(1, dto.getId());
	//pstmt.setString(2, dto.getPwd());
	//pstmt.setString(3, dto.getRepwd());
	//pstmt.setString(4, dto.getName());
	//pstmt.setString(5, dto.getNickname());
	//pstmt.setString(6, dto.getZipcode());
	//pstmt.setString(7, dto.getAddr1());
	//pstmt.setString(8, dto.getAddr2());
	//pstmt.setString(9, dto.getEmail());
	//pstmt.setInt(10, dto.getGrade());
}
