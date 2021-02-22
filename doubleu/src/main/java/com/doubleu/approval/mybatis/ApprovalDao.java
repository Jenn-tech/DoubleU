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
import com.doubleu.approval.vo.FormPetitionVo;
import com.doubleu.approval.vo.FormVacationVo;
import com.doubleu.approval.vo.FormVo;
import com.doubleu.approval.vo.IndexPage;
import com.doubleu.approval.vo.MemberVo;
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
		
		System.out.println("selectView 종료.....");
		return formVo;
	}
	
	public String updateR(FormVo vo) {
		String msg = "정상적으로 상신되었습니다.";
		
		int resultCnt = mapper.updateR(vo);
		if(resultCnt < 1) {
			msg = "업데이트 중 오류가 발생하였습니다.";
		}
		return msg;
	}
	public String updateVacation(FormVacationVo vo) {
		String msg = "정상적으로 휴가신청서 내용이 등록되었습니다.";
		int resultCnt = mapper.updateVacation(vo);
		if(resultCnt < 1) {
			msg = "업데이트 중 오류가 발생하였습니다.";
		}
		return msg;
	}
	public String updatePetition(FormPetitionVo vo) {
		String msg = "정상적으로 품의서 내용이 등록되었습니다.";
		int resultCnt = mapper.updatePetition(vo);
		if(resultCnt < 1) {
			msg = "업데이트 중 오류가 발생하였습니다.";
		}
		return msg;
	}
	
	public String insertDicisionMakers(List<DecisionMakerVo> decisionMakerList) {
		String msg = "정상적으로 결재란 목록이 등록되었습니다.";
		FormVo vo = new FormVo();
		vo.setDecisionMakersList(decisionMakerList);
		
		int resultCnt = mapper.insertDicisionMakers(vo);
		if(resultCnt < 1) {
			msg = "업데이트 중 오류가 발생하였습니다.";
		}
		return msg;
	}
	
	public String deleteDicisionMakers(int formNo) {
		String msg = "정상적으로 결재란 목록이 삭제되었습니다.";
		int resultCnt = mapper.deleteDicisionMakers(formNo);
		if(resultCnt < 1) {
			msg = "업데이트 중 오류가 발생하였습니다.";
		}
		return msg;
	}
	
	public Map<String, Object> selectMember(IndexPage page) {
		Map<String,Object> map = new HashMap<>();
		List<MemberVo> list = new ArrayList<>();
		int memberTotalListSize = mapper.memberTotalListSize(page);
		page.setTotalListSize(memberTotalListSize);
		page.pageCompute();
		
		list = mapper.selectMember(page);
		
		map.put("page", page);
		map.put("list", list);
		
		return map;
	}
	
	public Map<String, Object> selectReceiver(IndexPage page) {
		System.out.println("selectReceiver-Dao메소드 시작....");
		Map<String,Object> map = new HashMap<>();
		List<FormVo> list = new ArrayList<>();
		int receiverTotalListSize = mapper.receiverTotalListSize(page);
		System.out.println("receiverTotalListSize: " +receiverTotalListSize);
		page.setTotalListSize(receiverTotalListSize);
		page.pageCompute();

		list = mapper.selectReceiver(page);
		if(!list.isEmpty()) {
			System.out.println("출력 완료");
			System.out.println("기안자: " + list.get(0).getDrafterName());
		}
		map.put("page", page);
		map.put("list", list);
		System.out.println("selectReceiver-Dao메소드 종료....");
		return map;
	}
	
	public DecisionMakerVo selectMaker(DecisionMakerVo vo) {
		DecisionMakerVo resultVo = new DecisionMakerVo();
		resultVo = mapper.selectMaker(vo);
		
		return resultVo;
	}
	
	public String updateFormState(int formNo) {
		String msg = "정상적으로 변경되었습니다.";
		
		int cnt = mapper.updateFormState(formNo);
		if(cnt < 1) {
			System.out.println("업데이트 과정에서 오류가 발생했습니다.");
		}
		
		return msg;
	}
	public String deleteForm(FormVo formVo) {
		String msg = "정상적으로 삭제되었습니다.";
		int deleteFormNo = formVo.getFormNo();
		String formType = formVo.getFormType();
		int cnt = 0;
		if(formType.equals("품의서") || formType.equals("품의서")) {
			cnt = mapper.deletePetition(deleteFormNo); // 결재 양식이 품의서일 경우
			if(cnt < 1) {
				System.out.println("품의서 삭제과정에서 오류가 발생했습니다.");
				msg = "품의서 삭제과정에서 오류가 발생했습니다.";
			}
		}
		if(formType.equals("휴가신청서")) {
			cnt = mapper.deleteVacation(deleteFormNo); // 결재 양식이 휴가 신청서 일 경우
			if(cnt < 1) {
				System.out.println("휴가신청서 삭제과정에서 오류가 발생했습니다.");
				msg = "휴가신청서 삭제과정에서 오류가 발생했습니다.";
			} 
		}
		
		cnt = mapper.deleteAttFileList(deleteFormNo); // 첨부파일 삭제
		cnt = mapper.deleteDicisionMakers(deleteFormNo); // 결재권자 리스트 삭제
		

		cnt = mapper.deleteForm(deleteFormNo); // 공통 form 삭제 
		if(cnt < 1) {
			System.out.println("문서 삭제과정에서 오류가 발생했습니다.");
			msg = "문서 삭제과정에서 오류가 발생했습니다.";
		}
		
		return msg;
	}
	
}
