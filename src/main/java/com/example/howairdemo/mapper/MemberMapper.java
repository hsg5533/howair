package com.example.howairdemo.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.howairdemo.model.MemberVO;


@Mapper
public interface MemberMapper {
	public List<MemberVO> getList();
	public MemberVO read(String id);
	public void join(MemberVO member);
	public int idCheck(String id);
	public MemberVO loginCheck(String id);
	public void modify(MemberVO member);
	public void delete(String id);
	public List<MemberVO> findAll(HashMap<String, Object> hm);
	public int memberCount(HashMap<String, Object> hm);

}
