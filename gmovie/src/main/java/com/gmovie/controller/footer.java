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
@RequestMapping("/include/*")
public class footer {
	
	private static final Logger logger = LoggerFactory.getLogger(footer.class);
		
	/* 회사소개 */
	@RequestMapping("gmovieInfo.do")
	public String gmovieInfo(Model model) throws Exception {
		return "include/gmovieInfo";
	}
	
	/* 인재채용 */
	@RequestMapping("recruit.do")
	public String recruit(Model model) throws Exception {
		return "include/recruit";
	}
	
	/* 사회공헌 */
	@RequestMapping("social.do")
	public String social(Model model) throws Exception {
		return "include/social";
	}
	
	/* 제휴/광고/부대사업문의 */
	@RequestMapping("partner.do")
	public String partner(Model model) throws Exception {
		return "include/partner";
	}
	
	/* 법적고지 */
	@RequestMapping("rules.do")
	public String rules(Model model) throws Exception {
		return "include/rules";
	}
	
	/* 이메일주소무단수집거부 */
	@RequestMapping("emreject.do")
	public String emreject(Model model) throws Exception {
		return "include/emreject";
	}
	
	/* 윤리경영 */
	@RequestMapping("management.do")
	public String management(Model model) throws Exception {
		return "include/management";
	}

	
}
