package com.doubleu.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doubleu.notice.mybatis.FamilyeventMapper;
import com.doubleu.notice.vo.FamilyeventVo;

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
		System.out.println("select mapper 반환");
		return list;
	}

	public FamilyeventVo view(int no) {
		System.out.println("view 시작");
		FamilyeventVo vo =  mapper.view(no);
		System.out.println("view mapper 반환");
		return vo;
	}
	
	public String update(FamilyeventVo vo) {
		System.out.println("update 시작");
		String msg = "";
		int cnt =  mapper.update(vo);
		if(cnt<0) {
			msg = "수정중 오류 발생";
		}else {
			msg = "정상적으로 수정되었습니다.";
		}
		System.out.println("update mapper 반환");
		return msg;
	}
	
}
