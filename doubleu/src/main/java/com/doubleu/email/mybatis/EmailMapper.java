package com.doubleu.email.mybatis;

import java.util.List;



import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.doubleu.email.vo.AttEmailVo;
import com.doubleu.email.vo.EmailMainVo;
import com.doubleu.email.vo.EmailPage;
import com.doubleu.email.vo.EmailReceiverVo;

@Repository
@Mapper
public interface EmailMapper {
	// 메인 페이지
	public List<EmailMainVo> selectSendRead(String memberMid);
	
    // 메일 쓰기
	public int insertSendWrite(EmailMainVo vo);
	public int selectSendEmail();
	public List<EmailMainVo> selectFindStr(String findStr);
	
	public List<EmailMainVo> selectEmailNo(int emailNo);
	// 파일 데이터 가져오기
	public List<AttEmailVo> selectFiles(int emailNo);
	public List<EmailMainVo> selectSearchDetail(String findName, String findContents, String findDate);
	
	// 받은 사람
	public List<EmailReceiverVo> selectSendPerson(int emailNo);
	// 참조
	public List<EmailReceiverVo> selectRefPerson(int emailNo);
	
	
	//페이지
	public int totListSizeMain(EmailPage page);
	public List<EmailMainVo> selectPaging(EmailPage page);
	public int test(EmailPage page);
	
}
