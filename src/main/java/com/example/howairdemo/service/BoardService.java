package com.example.howairdemo.service;

import java.util.HashMap; 
import java.util.List;

import com.example.howairdemo.model.BoardVO;
import com.example.howairdemo.model.FileVO;
import com.example.howairdemo.model.ReplyBoardVO;

public interface BoardService {
	public List<BoardVO> getList();
	List<BoardVO> findPage(HashMap<String,Object> hm);
	BoardVO read(int bno);
	ReplyBoardVO replyread(int bno);
	void insert(BoardVO vo);
	void replyinsert(ReplyBoardVO replyvo);
	int boardCount();
	boolean update(BoardVO vo);
	boolean delete(int bno);
	List<BoardVO> findAll(HashMap<String, Object> hm);
	int boardCount(HashMap<String, Object> hm);
	FileVO getFile(int fno);
	

}
