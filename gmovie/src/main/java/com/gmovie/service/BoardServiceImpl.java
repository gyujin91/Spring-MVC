package com.gmovie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmovie.dao.BoardDAO;
import com.gmovie.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {
	
	// 해당 dao 객체 주입
	@Autowired
	BoardDAO boardDao;
	
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return boardDao.boardList();
	}

	@Override
	public BoardDTO boardRead(int bno) throws Exception {
		return boardDao.boardRead(bno);
	}

	@Override
	public void boardWrite(BoardDTO dto) throws Exception {
		boardDao.boardWrite(dto);
	}

	@Override
	public void boardUpdate(BoardDTO dto) throws Exception {
		boardDao.boardUpdate(dto);
	}

	@Override
	public void boardDelete(int bno) throws Exception {
		boardDao.boardDelete(bno);
	}
	
	
}
