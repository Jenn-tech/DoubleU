package com.doubleu.approval.mybatis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doubleu.approval.vo.AttFileVo;
import com.doubleu.approval.vo.DecisionMakerVo;
import com.doubleu.approval.vo.FormVo;
import com.doubleu.approval.vo.IndexPage;
import com.doubleu.approval.vo.SelectPage;

@Service
@Transactional
public class ApprovalDao {

	@Autowired
	ApprovalMapper mapper;
	
	public String insert(FormVo vo) {
		String msg = "정상적으로 등록되었습니다.";
		System.out.println("service도착");
		int cnt = mapper.insert(vo);
		
		return msg;
	}
	
	/*
	 * public int getTotalListSize(IndexPage page) { int totalListSize;
	 * 
	 * totalListSize = mapper.totalListSize(page);
	 * 
	 * return totalListSize;
	 * 
	 * }
	 */	
	
	public Map<String, Object> selectOutgoing(IndexPage page) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		System.out.println("findStr: " + page.getFindStr());
		System.out.println("nowPage: " + page.getNowPage());
		
		int outgoingTotalListSize = mapper.outgoingTotalListSize(page);
		System.out.println("outgoingTotalListSize: " + outgoingTotalListSize);
		page.setTotalListSize(outgoingTotalListSize);
		page.pageCompute();
		
		List<FormVo> list = mapper.selectOutgoing(page);
		if(list.isEmpty()) {
			System.out.println("검색된 정보가 없습니다.");
		}
		else {
			map.put("list", list);
		}
		map.put("page", page);
		
		return map;
	}
	public Map<String, Object> receptionSelect(IndexPage page) {
		Map<String, Object> map = new HashMap<String, Object>();
		return map;
	}
	
	public Map<String, Object> selectOutgoingChoose(SelectPage page) {
		Map<String, Object> map = new HashMap<String, Object>();

		int chooseTotalListSize = mapper.chooseTotalListSize(page);
		
		System.out.println("chooseTotalListSize:" + chooseTotalListSize);
		page.setTotalListSize(chooseTotalListSize);
		page.pageCompute();
		System.out.println("마지막페이지:" + page.getEndPage());
		System.out.println("지금페이지:" + page.getNowPage());
		List<FormVo> list = mapper.selectChoose(page);
		map.put("list", list);
		map.put("page", page);
		return map;
	}

	public FormVo selectView(FormVo vo) {
		System.out.println("selectView 메소드 도착..");
		FormVo formVo = new FormVo();
		List<DecisionMakerVo> makerList = new ArrayList<>();
		List<AttFileVo> attList = new ArrayList<>();
		
		formVo = mapper.selectView(vo);
		makerList = mapper.selectDecisionMaker(formVo.getFormNo());
		attList = mapper.selectAttFile(formVo.getFormNo());
		
		if(!makerList.isEmpty()) {
			formVo.setDecisionMakersList(makerList);
		}
		else {
			System.out.println("결재권자 리스트 출력 중 오류 발생");
		}
		
		if(!attList.isEmpty()) {
			formVo.setAttFileList(attList);
		}
		
		
		return formVo;
	}
	
	
}
