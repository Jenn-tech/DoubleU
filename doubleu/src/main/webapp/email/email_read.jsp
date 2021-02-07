<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일</title>

<!-- bootstrap CDN -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">


<!-- bootstrap script, Jquery CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>
<!-- ****************************** -->	
	
	
<!-- include summernote css/js-->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

<!-- main page CSS -->
<link rel="stylesheet" href="/css/MainIndex.css">
<!-- 이메일 CSS -->
<link rel="stylesheet" href="/css/email/email_read.css">

</head>
<body>
	<!-- 그룹웨어 GNB 헤더-->

	<header>
		<jsp:include page="/MainPage/header.jsp"></jsp:include>
	 </header>
	 <!-- 그룹웨어 GNB code 끝 -->
	 
	<section class="e-approval-container">
		
	<!-- e-approval-lnb code -->
		<nav class="e-approval-lnb"> 
			<div class="e-approval-lnb-content">
				<h3>메일</h3>
				<div class="e-approval-form-btn">
					<input type="button" class="btn btn-primary btn-lg" value="메일쓰기">
				</div>
				<div class="e-approval-approval-list">
					<span>메일함</span>
					<ul>
						<li><a href="email_index.jsp">받은 메일함</a><span class="badge badge-pill badge-ligh">1566</span></li>
						<li><a href="email_star.jsp">별표 메일함</a></li>
						<li><a href="email_important.jsp">중요 메일함</a></li>
						<li><a href="email_temporary.jsp">임시 보관함</a></li>
						<li><a href="email_sendEmail.jsp">보낸 메일함</a></li>
						<li><a href="email_spam.jsp">스팸 메일함</a> <button type="button" style="font-size:10px;"class="btn btn-primary btn-sm">비우기</button></li>
						<li><a href="email_trash.jsp">휴지통</a> <button type="button" style="font-size:10px;" class="btn btn-primary btn-sm">비우기</button></li>
						
					</ul>
				</div>
				<div class="e-approval-approval-list">
					<span class="sendmail-align">
					<span>내 메일함</span>
					<button type="button" style="font-size: 5px; line-height: 13px;" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#moveEmailContents">+</button>
					</span>
					
					<ul>
						<li><a href="email_keep_one.jsp">NOTES</a></li>
						<li><a href="email_keep_two.jsp">보관함</a></li>
					</ul>
				</div>
			</div>
		</nav>
<!-- lnb code 끝 -->

<!-- 모달창 모음 -->
	<!-- 1. 내 메일함 추가 모달창 -->
                <div class="modal fade bs-example-modal-lg" id="moveEmailContents" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content modalEmail">
                        <div class="modalNewEmailFolder">
                            <h4>새 메일함 만들기</h4>
                            <input type="text" placeholder="메일함 이름">
                            <div class="modalNewEmailFolderBtn">
                                <button class="btn btn-primary btn-lg btn-primary btn-sm" role="button">만들기</button>
                                <button class="btn btn-primary btn-lg btn-primary btn-sm" role="button">취소하기</button>
                            </div>
                        </div>
                        
                    </div>
                </div>  
                </div>
                
  
    <!-- 모달창 모음 끝 -->           
               
	<main class="e-approval-article">

	
		<!-- 메일 검색바 code -->
		
			<div class="e-approval-search-bar">
	      		<form class="e-approval-search-form" action="" name="frm" method="post">
			      	<div class="e-approval-form-box">
			      		<span>받은 메일함</span>
					</div>

				
				<div class="email-select-content">
					<ul class="email-select-list">
                    <li>
                     	<span class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#spamEmailRev">스팸차단</span>
                    </li>
                    <li>
                          <span class="btn btn-outline-primary btn-sm">답장하기</span>
                     </li>

                     <li>
                         <span class="btn btn-outline-primary btn-sm">삭제하기</span>
                     </li>

                     <li>
                         <span class="btn btn-outline-primary btn-sm">전달하기</span>
                     </li>

				</ul>
					<!-- 제목 -->
				    <div class="emailSendContentsHeader">
						<div class="form-group col-sm-1">
						    <label for="exampleFormControlInput1">제목</label>
						</div>
						
						<div class="form-group col-sm-1 importSend"></div>

						<div class="form-group col-sm-9">
						 	<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="프론트 작업중입니다. 테스트 부탁드립니다. 안녕하세요.">
						</div>
				    </div>
				    					    
					<div class="emailSendContents">
						<div class="form-group col-sm-2">
						    <label for="exampleFormControlInput1">보내는 사람</label>
						</div>
						
						<div class="form-group col-sm-2">
						 	<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="송연주">
						</div>
						
						<div class="form-group col-sm-7">
						 	<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
						</div>
				    </div>
				    
				 
				    
		
					<!-- 내용 -->
					<div class="readContents">
						하하
					</div>
						
					
					
					<!-- 파일첨부 -->
					<div class="custom-file">
					  <button type="button" id="fileAdd"class="btn btn-light">첨부파일</button>	 
				 	  <c:forEach begin="0" end="1">
				 	  <span class="badge badge-light">Choose file.jpg</span>
				 	  </c:forEach>
					</div>

					<!-- 버튼 -->
					<div class="send-and-cancel">
					<button type="button" class="btn btn-primary btn-lg" onclick="location.href='email_index.jsp'">목록으로</button>
					</div>
				</div>
					
					
     		</form>
		</div>
	</main>
</section>

<script>

	chk = function() {
		console.log('하이')
		var arr = ['zero', 'one', 'tow']; 
		
		let btn = document.getElementById('testType')
		btn.value = arr
		console.log(btn.value)
		
		/*
		document.frm.action = "test.jsp";
		document.frm.submit();	*/
	}
	
</script>
	
</body>
</html>