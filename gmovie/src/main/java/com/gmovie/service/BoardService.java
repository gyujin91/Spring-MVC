package com.gmovie.service;

import java.util.List;

import com.gmovie.dto.BoardDTO;

public interface BoardService {
	// 글 목록
	public List<BoardDTO> boardList() throws Exception;
			
	// 글 상세보기
	public BoardDTO boardRead(int bno) throws Exception;
			
	// 글 등록
	public void boardWrite(BoardDTO dto) throws Exception;
			
	// 글 수정
	public void boardUpdate(BoardDTO dto) throws Exception;
			
	// 글 삭제
	public void boardDelete(int bno) throws Exception;
}
