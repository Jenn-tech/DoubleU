package com.doubleu.approval.vo;

public class DecisionMakerVo {
	int memberNo;
	int formNo;
	String makerName;
	String makerPosition;
	String makerOrder;
	int decisionState;  
	String makerComment;

	public String getMakerComment() {
		return makerComment;
	}
	public String getMakerOrder() {
		return makerOrder;
	}
	public void setMakerOrder(String makerOrder) {
		this.makerOrder = makerOrder;
	}
	public void setMakerComment(String makerComment) {
		this.makerComment = makerComment;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getFormNo() {
		return formNo;
	}
	public void setFormNo(int formNo) {
		this.formNo = formNo;
	}
	public String getMakerName() {
		return makerName;
	}
	public void setMakerName(String makerName) {
		this.makerName = makerName;
	}
	public String getMakerPosition() {
		return makerPosition;
	}
	public void setMakerPosition(String makerPosition) {
		this.makerPosition = makerPosition;
	}
	public int getDecisionState() {
		return decisionState;
	}
	public void setDecisionState(int decisionState) {
		this.decisionState = decisionState;
	}
}
