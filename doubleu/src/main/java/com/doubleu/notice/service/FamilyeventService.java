package com.doubleu.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doubleu.notice.mybatis.FamilyeventMapper;
import com.doubleu.notice.vo.FamilyeventVo;
import com.doubleu.notice.mybatis.FamilyeventDao;

@Service
public class FamilyeventService {
	@Autowired
	FamilyeventMapper mapper;
	
	public String insert(FamilyeventVo vo) {
		String msg = "정상 입력 됨";
		int cnt = mapper.insert(vo);
		return msg;
	}
	
	public List<FamilyeventVo> select(){
		System.out.println("select 시작");
		List<FamilyeventVo> list =  mapper.select();
		System.out.println("맵퍼 반환");
		return list;
	}
	
	
}
