package com.doubleu.email.contorller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.doubleu.email.mybatis.EmailDao;
import com.doubleu.email.service.EmailReveiverService;
import com.doubleu.email.service.EmailUploadService;
import com.doubleu.email.vo.AttEmailVo;
import com.doubleu.email.vo.EmailMainVo;
import com.doubleu.email.vo.EmailReceiverVo;

@RestController
public class EmailMainController {
	
	/* DI ──────────────────────────────────────────────────────────────────────── */
	
	@Autowired
	EmailDao DaoService;
	
	@Autowired 
	// 파일
	EmailUploadService FileUpLoadService; 

	@Autowired
	// 메일쓰기 받은 사람
	EmailReveiverService emailReveiverService;
	
	/* ────────────────────────────────────────────────────────────────────────── */
	
	
	//email_index.jsp	
	@RequestMapping(value="/emailIndex", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView emailIndex(EmailMainVo vo) {
		
		ModelAndView mv = new ModelAndView();

		
		List<EmailMainVo> list = DaoService.selectSendRead();
		
		
		mv.addObject("list", list);
		mv.setViewName("email/email_index");

		return mv;
	}
	
	
	// email_result.jsp
	@RequestMapping(value="/emailResult", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView emailResult(
			@RequestParam("attEmailFileList") 
			List<MultipartFile> mul,
			@ModelAttribute EmailMainVo vo, 
			HttpServletRequest req) {
		
		ModelAndView mv = new ModelAndView();
		
		// 메일 쓰기 받은 사람
		List<EmailReceiverVo> emailRevList = emailReveiverService.insertRev(req);
		vo.setEmailRevList(emailRevList);
		
		// 파일 업로드 
		List<AttEmailVo> attFileList = FileUpLoadService.upload(mul);
		vo.setAttFileList(attFileList);
		
		int cnt = DaoService.insertSendWrite(vo);
		
		mv.setViewName("email/email_result");

		return mv;
	}

}


