package com.doubleu.calender.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doubleu.calender.vo.CalenderParticiptant;
import com.doubleu.calender.vo.CalenderVo;

@Service
@Transactional
public class CalenderDao {

	@Autowired
	CalenderMapper mapper;
	
	public String insert(CalenderVo vo) {
		System.out.println("service 시작");
		String msg = "정상적으로 등록되었습니다.";
		int cnt = mapper.insert(vo);
		System.out.println("service 종료");
		return msg;
	}

	public List<CalenderVo> selectList() {
		List<CalenderVo> cList = mapper.selectList();
		return cList;
	}
	
	public CalenderVo selectOne(int id) {
		return mapper.selectOne(id);
	}
	
	public String delete(CalenderVo vo) {
		System.out.println("service 시작");
		String msg = "정상적으로 삭제되었습니다.";
		int cnt = mapper.delete(vo);
		System.out.println("service 종료");
		return msg;
	}
	
//	public List<CalenderParticiptant> selectPartiList(int no) {
//		List<CalenderParticiptant> pList = mapper.selectPartiList(no);
//		return pList;
//	}
	
	public String update(CalenderVo vo) {
		System.out.println("service 시작");
		String msg = "정상적으로 등록되었습니다.";
		int cnt = mapper.update(vo);
		System.out.println("service 종료");
		return msg;
	}
	
//	public void updateParti(List<CalenderParticiptant> pList) {
//		 int cnt = mapper.updateParti(pList);
//	}
}
