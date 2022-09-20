package com.gmovie.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.gmovie.dto.MemberDTO;
import com.gmovie.service.MemberService;


@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	// 서비스 작업 객체 주입
	@Autowired
	MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	/* 회원 목록 불러오기 */
	@RequestMapping("list.do")
	public String memberList(Model model) throws Exception {
		// board 테이블에서 전체 글 리스트로 가져오기
		List<MemberDTO> memberList = memberService.memberList();
		model.addAttribute("memberList", memberList);
		return "member/memberList";
	}
	
	/* 관리자 회원 정보 보기  */
	@RequestMapping(value = "admin.do", method = RequestMethod.GET)
	public String admin(@RequestParam String userid,  Model model) throws Exception {
		MemberDTO member = memberService.memberRead(userid);
		model.addAttribute("member", member);
		return "member/memberRead";
	}
	
	/* 일반 회원 정보 보기 */
	@RequestMapping(value = "read.do", method = RequestMethod.GET)
	public String memberRead(HttpServletRequest request, Model model) throws Exception {
		String userid = (String)session.getAttribute("sid");
		MemberDTO member = memberService.memberRead(userid);
		model.addAttribute("member", member);
		return "member/memberRead";
	}
	
	/* 회원 약관 동의 */
	@RequestMapping("agreement.do")
	public String agreement(Model model) throws Exception {
		return "member/agreement";
	}
	
	/* 회원 가입  폼 */
	@RequestMapping("joinForm.do")
	public String joinForm(Model model) throws Exception {
		return "member/joinForm";
	}
	
	/* 로그인 폼  */
	@RequestMapping("loginForm.do")
	public String loginForm(Model model) throws Exception {
		return "member/loginForm";
	}
	
	/* 회원 가입 */
	@RequestMapping("join.do")
	public String join(MemberDTO dto, Model model) throws Exception {
		String userpw = dto.getUserpw();
		// 비밀번호 암호화
		String pwd = pwdEncoder.encode(userpw);
		dto.setUserpw(pwd);
		memberService.join(dto);
		return "redirect:/";
	}
	
	/* 회원 정보 수정  */
	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public String memberUpdate(MemberDTO dto, Model model) throws Exception {
		memberService.memberUpdate(dto);
		return "redirect:/";
	}
	
	/* 회원 탈퇴 */
	@RequestMapping(value = "delete.do", method = RequestMethod.GET)
	public String memberDelete(@RequestParam String userid, Model model, HttpSession session) throws Exception {
		memberService.memberDelete(userid);
		session.invalidate();
		return "redirect:/";
	}
	
	/* 회원목록에서 관리자 직권 회원 탈퇴 */
	@RequestMapping(value = "adminDelete.do", method = RequestMethod.GET)
	public String adminDelete(@RequestParam String userid, Model model, HttpSession session) throws Exception {
		memberService.memberDelete(userid);
		return "member/memberList";
	}
	
	// 컨트롤러에서 세션 처리
	@RequestMapping(value = "signin.do", method = RequestMethod.POST)
	public String memberSignin(@RequestParam String userid, @RequestParam String userpw, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		session.invalidate();
		MemberDTO dto = new MemberDTO();
		dto.setUserpw(userpw);
		dto.setUserid(userid);
		MemberDTO login = memberService.signin(dto);
		boolean loginSuccess = pwdEncoder.matches(dto.getUserpw(), login.getUserpw());
		if(loginSuccess && login != null) {
			session.setAttribute("member", login);
			session.setAttribute("sid", userid);
			return "redirect:/";
		}
		return "redirect:loginForm.do";
	}
	
	// 서비스에서 세션 처리
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String memberLogin(MemberDTO dto, HttpServletRequest req,  RedirectAttributes rttr) throws Exception {
		boolean loginSuccess = memberService.login(req);
		if(loginSuccess) {
			return "home";
		} else {
			return "redirect:loginForm.do";
		}
	}
	
	// Ajax를 이용하는 방법
	@RequestMapping(value = "loginCheck.do", method = RequestMethod.POST)
	public String memberLoginCtrl(MemberDTO dto, RedirectAttributes rttr) throws Exception {
		session.getAttribute("member");
		MemberDTO member = memberService.loginCheck(dto);
		boolean mat = pwdEncoder.matches(dto.getUserpw(), member.getUserpw());
		if(mat == true && member != null) {
			logger.info("로그인 성공");
			session.setAttribute("member", member);
			session.setAttribute("sid", member.getUserid());
			return "redirect:/";
		} else {
			logger.info("로그인 실패");
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:loginForm.do";
		}
	}
	
	// 아이디 중복 체크
	@RequestMapping(value = "idCheck.do", method = RequestMethod.GET)
	public String idCheck(@RequestParam String userid, Model model, RedirectAttributes rttr) throws Exception {
		int cnt = memberService.idCheck(userid);
		if(cnt == 0) {
			model.addAttribute("msg", "가입 가능한 아이디");
			rttr.addFlashAttribute("message", "가입 가능한 아이디");
			model.addAttribute("ck", "ok");
			model.addAttribute("uid", userid);
		} else {
			model.addAttribute("msg", "가입 불가능한 아이디");
			rttr.addFlashAttribute("message", "가입 불가능한 아이디");
			model.addAttribute("ck", null);
		}
		return "joinForm";
	}
	
	// 로그아웃
	@RequestMapping("logout.do")
	public String memberLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
	
	
}
