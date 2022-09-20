package com.gmovie.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.gmovie.dao.MemberDAO;
import com.gmovie.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO memberDao;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	@Override
	public MemberDTO memberRead(String userid) throws Exception {
		return memberDao.memberRead(userid);
	}

	@Override
	public void join(MemberDTO dto) throws Exception {
		memberDao.join(dto);
	}

	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		memberDao.memberUpdate(dto);
	}

	@Override
	public void memberDelete(String userid) throws Exception {
		memberDao.memberDelete(userid);
	}

	@Override
	public MemberDTO loginCheck(MemberDTO dto) throws Exception {
		return memberDao.loginCheck(dto);
	}

	@Override
	public MemberDTO signin(MemberDTO dto) throws Exception {
		return memberDao.signin(dto);
	}

	@Override
	public boolean login(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		boolean loginSuccess = false;
		MemberDTO dto = new MemberDTO();
		
		dto.setUserid(request.getParameter("userid"));
		dto.setUserpw(request.getParameter("userpw"));
		
		MemberDTO login = memberDao.login(dto);
		
		loginSuccess = pwdEncoder.matches(dto.getUserpw(), login.getUserpw());
		if(login != null && loginSuccess == true) {
			session.setAttribute("member", login);
			session.setAttribute("sid", login.getUserid());
			loginSuccess = true;
		}
		return loginSuccess;
	}

	@Override
	public int idCheck(String userid) throws Exception {
		return memberDao.idCheck(userid);
	}
	
	
}
