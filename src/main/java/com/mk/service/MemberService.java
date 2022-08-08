package com.mk.service;

import org.mindrot.bcrypt.BCrypt;

import com.mk.dao.MemberDAO;
import com.mk.dto.MemberDTO;

public class MemberService {
	
	MemberDAO dao = MemberDAO.getInstance();
	public BCrypt passwordEncoder = new BCrypt();
	
	private static MemberService instance=null;
	public static MemberService getInstance() {
		if(instance==null)
			instance = new MemberService();
		return instance;
	}
	private MemberService() {}
	
	public boolean MemberInsert(MemberDTO dto)
	{
		String pwd = passwordEncoder.hashpw(dto.getPwd(), passwordEncoder.gensalt());
		System.out.println("PWD(EN) : " + pwd);
		dto.setPwd(pwd);
		return dao.insert(dto);
	}
	public MemberDTO MemberSearch(String email)
	{
		return dao.Select(email);
	}
	public boolean MemberUpdate(MemberDTO dto) {
		return dao.Update(dto);
	}
	
}
