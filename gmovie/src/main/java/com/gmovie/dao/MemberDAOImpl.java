package com.gmovie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmovie.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	// 해당 프로그램이 필요하면 알아서 사용하게 되어 스스로 제어하게 됨
	// 객체 주입
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}

	@Override
	public MemberDTO memberRead(String userid) throws Exception {
		return sqlSession.selectOne("member.memberRead", userid);
	}

	@Override
	public void join(MemberDTO dto) throws Exception {
		sqlSession.insert("member.join", dto);
	}

	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		sqlSession.update("member.memberUpdate", dto);
	}

	@Override
	public void memberDelete(String userid) throws Exception {
		sqlSession.delete("member.memberDelete", userid);
	}

	@Override
	public MemberDTO loginCheck(MemberDTO dto) throws Exception {
		dto = sqlSession.selectOne("member.loginCheck", dto);
		return dto;
	}

	@Override
	public MemberDTO signin(MemberDTO dto) throws Exception {
		return sqlSession.selectOne("member.signin", dto);
	}

	@Override
	public MemberDTO login(MemberDTO dto) throws Exception {
		return sqlSession.selectOne("member.login", dto);
	}

	@Override
	public int idCheck(String userid) throws Exception {
		return sqlSession.selectOne("member.idCheck", userid);
	}
	
	
}
