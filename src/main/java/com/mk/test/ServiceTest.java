package com.mk.test;

import org.junit.Test;

import com.mk.dto.MemberDTO;
import com.mk.service.MemberService;

public class ServiceTest {

	@Test
	public void test() {
		MemberDTO dto = new MemberDTO();
		dto.setEmail("example2@example.com");
		dto.setPwd("1234");
		
		MemberService service = MemberService.getInstance();
		service.MemberInsert(dto);
	}
	
	@Test
	public void Test2() {
		MemberDTO dto = new MemberDTO();
		dto.setEmail("eunki5093@admin.com");
		dto.setPwd("1234");
		dto.setGrade(2);
		
		MemberService service = MemberService.getInstance();
		service.MemberInsert(dto); //관리자 계정 등록
		
		dto.setEmail("guest@guest.com");
		dto.setPwd("1234");
		dto.setGrade(0);
		
		service.MemberInsert(dto);
	
	}
	
	

}
