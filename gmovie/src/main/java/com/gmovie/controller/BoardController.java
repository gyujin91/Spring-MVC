package com.gmovie.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmovie.dto.BoardDTO;
import com.gmovie.service.BoardService;


@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	// 서비스 작업 객체 주입
	@Autowired
	BoardService boardService;
	
	// 게시판 목록 불러오기
	@RequestMapping("list.do")
	public String boardList(Model model) throws Exception {
		// board 테이블에서 전체 글 리스트로 가져오기
		List<BoardDTO> boardList = boardService.boardList();
		model.addAttribute("boardList", boardList);
		return "board/boardList";
	}
	
	// 게시판 상세보기
	@RequestMapping(value = "read.do", method = RequestMethod.GET)
	public String boardRead(@RequestParam int bno, Model model) throws Exception {
		BoardDTO board = boardService.boardRead(bno);
		model.addAttribute("board", board);
		return "board/boardRead";
	}
	
	@RequestMapping("writeForm.do")
	public String boardWriteForm(Model model) throws Exception {
		return "board/boardWriteForm";
	}
	
	// 게시판 등록
	@RequestMapping(value ="write.do", method = RequestMethod.POST)
	public String boardWrite(BoardDTO dto, Model model) throws Exception {
		boardService.boardWrite(dto);
		return "redirect:list.do";
	}
	
	// 게시판 수정
	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public String boardUpdate(BoardDTO dto, Model model) throws Exception {
		boardService.boardUpdate(dto);
		return "redirect:list.do";
	}
	
	// 게시판 삭제
	@RequestMapping(value = "delete.do", method = RequestMethod.GET)
	public String boardDelete(@RequestParam int bno, Model model) throws Exception {
		boardService.boardDelete(bno);
		return "redirect:list.do";
	}
	
	
}
