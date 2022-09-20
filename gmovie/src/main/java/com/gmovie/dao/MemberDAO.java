package com.gmovie.dao;

import java.util.List;

import com.gmovie.dto.MemberDTO;

public interface MemberDAO {
	
	// 회원 목록 불러오기
	public List<MemberDTO> memberList() throws Exception;
	// 회원 정보 상세보기
	public MemberDTO memberRead(String userid) throws Exception;
	// 회원 가입
	public void join(MemberDTO dto) throws Exception;
	// 회원 정보 수정
	public void memberUpdate(MemberDTO dto) throws Exception;
	// 회원 탈퇴
	public void memberDelete(String userid) throws Exception;
	// 로그인
	public MemberDTO loginCheck(MemberDTO dto) throws Exception;
	// 로그인1
	public MemberDTO signin(MemberDTO dto) throws Exception;
	// 로그인2
	public MemberDTO login(MemberDTO dto) throws Exception;
	// 아이디 중복 체크
	public int idCheck(String userid) throws Exception;
}
