package com.doubleu.email.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.doubleu.email.vo.AttEmailVo;
import com.doubleu.email.vo.EmailMainVo;

@Repository
@Mapper
public interface EmailMapper {
	public List<EmailMainVo> selectSendRead();
	public int insertSendWrite(EmailMainVo vo);
	public int selectSendEmail();
	public List<EmailMainVo> selectFindStr(String findStr);
	public List<EmailMainVo> selectEmailNo(int emailNo);
	public List<AttEmailVo> selectFiles(int emailNo);
	public List<EmailMainVo> selectSearchDetail(String findName, String findContents, String findDate);
}
