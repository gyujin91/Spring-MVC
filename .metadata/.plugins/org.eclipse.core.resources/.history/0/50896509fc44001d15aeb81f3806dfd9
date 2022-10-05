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
@RequestMapping("/movie/*")
public class MovieController {
	
	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
		
	/* 영화 목록 전체 보기 */
	@RequestMapping("movieList.do")
	public String gmovieInfo(Model model) throws Exception {
		return "movie/movieList";
	}
	
	/* 영화 상세 보기 */
	@RequestMapping("details.do")
	public String details(Model model) throws Exception {
		return "movie/details";
	}
	
	

	
}
