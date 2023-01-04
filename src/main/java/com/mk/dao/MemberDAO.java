package com.mk.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mk.dto.MemberDTO;

public class MemberDAO {

	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "admin";
	private String pw = "1234";

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	private static MemberDAO instance;

	public static MemberDAO getInstance() {
		if (instance == null)
			;
		instance = new MemberDAO();
		return instance;
	}

	private MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("DBConnected!!");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean insert(MemberDTO dto) {
		try {
			System.out.println("DTO : " + dto);
			pstmt = conn.prepareStatement("insert into tbl_member values(?,?,?,?,?)");
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getNickname());
			pstmt.setString(5, dto.getEmail());

			int result = pstmt.executeUpdate();
			if (result > 0)
				return true;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
		return false;

	}

	public MemberDTO Select(String email) {
		MemberDTO dto = new MemberDTO();
		try {
			pstmt = conn.prepareStatement("select * from tbl_member where id=?");
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setRepwd(rs.getString("repwd"));
				dto.setName(rs.getString("name"));
				dto.setNickname(rs.getString("nickname"));
				dto.setEmail(rs.getString("email"));
				dto.setGrade(rs.getInt("grade"));
				return dto;
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;

	}

	public boolean Update(MemberDTO dto) {

		try {

			pstmt = conn.prepareStatement("update tbl_member set pwd=?,repwd=?,name=?,nickname=?,email=? where id=?");
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getRepwd());
			pstmt.setString(4, dto.getName());
			pstmt.setString(5, dto.getNickname());
			pstmt.setString(6, dto.getEmail());
			pstmt.setInt(7, dto.getGrade());
			int result = pstmt.executeUpdate();

			if (result > 0)
				return true;

		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;

	}
}
