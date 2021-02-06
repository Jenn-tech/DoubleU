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
<link rel="stylesheet" href="/css/email/email_wirte.css">

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
							<li><a href="#">받은 메일함</a><span class="badge badge-pill badge-ligh">1566</span></li>
							<li><a href="#">별표 메일함</a></li>
							<li><a href="#">중요 메일함</a></li>
							<li><a href="#">임시 보관함</a></li>
							<li><a href="#">보낸 메일함</a></li>
							<li><a href="#">스팸 메일함</a> <button type="button" style="font-size:10px;"class="btn btn-primary btn-sm">비우기</button></li>
							<li><a href="#">휴지통</a> <button type="button" style="font-size:10px;" class="btn btn-primary btn-sm">비우기</button></li>
							
						</ul>
					</div>
					<div class="e-approval-approval-list">
						<span class="sendmail-align">
						<span>내 메일함</span>
						<button type="button" style="font-size: 5px; line-height: 13px;" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">+</button>
						</span>
						
						<ul>
							<li><a href="#">NOTES</a></li>
							<li><a href="#">보관함</a></li>
						</ul>
					</div>
				</div>
			</nav>
	<!-- lnb code 끝 -->
	
	<!-- 모달창 모음 -->
		<!-- 1. 내 메일함 추가 모달창 -->
	                <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
	                
        <!-- 2. 스팸 모달창 -->
         
         <div class="modal fade bs-example-modal-lg"  id="spamEmailRev" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	                <div class="modal-dialog modal-lg">
	                    <div class="modal-content modalSpamEmail">
	                        <div class="modalSpamEmailFolder">
	                            <h4>스팸 차단</h4>
	                            <p>선택한 메일의 정보를 차단 정보로 등록하고, 해당 정보로 오는 메일은 앞으로 받지 않고 자동 반송합니다.</p>
	                            <input type="text" placeholder="song@gmail.com">
	                            <div class="modalSpamEmailFolderBtn">
	                                <button class="btn btn-primary btn-lg btn-primary btn-sm" role="button">차단하기</button>
	                                <button class="btn btn-primary btn-lg btn-primary btn-sm" role="button">취소하기</button>
	                            </div>
	                        </div>
	                        
	                    </div>
	                </div>  
	                </div>
	                
	    <!-- 3. 이동 모달창 -->
	     <div class="modal fade bs-example-modal-lg" id="moveEmailRev" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" style="margin: 30px auto;">
                            <div class="modal-content modalMoveContent">
                                <div class="modalMoveBtn">
                                    <h4>이동</h4>
                                    
                                    <ul style="font-size: 20px;">
                                        <li>메일함</li>
                                        <li class="btn btn-outline-primary btn-sm">받은 메일함</li>
                                        <li class="btn btn-outline-primary btn-sm">중요 메일함</li>
                                        <li class="btn btn-outline-primary btn-sm">임시 보관함</li>
                                        <li class="btn btn-outline-primary btn-sm">내가 쓴 메일함</li>
                                        <li class="btn btn-outline-primary btn-sm">스팸 메일함</li>
                                        <li class="btn btn-outline-primary btn-sm">휴지통</li>
                                    </ul>
                                    
                                    <ul style="font-size: 20px;">
                                        <li>내 메일함</li>
                                        <li class="btn btn-outline-primary btn-sm">NOTES</li>
                                        <li class="btn btn-outline-primary btn-sm">보관함</li>
                                    </ul>

                                    <div class="modalMoveEmailBtn">
                                        <button class="btn btn-primary btn-sm" role="button">이동하기</button>
	                                	<button class="btn btn-primary btn-sm" role="button">취소하기</button>
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
			      		<span>메일쓰기</span>
			      		<button type="button" style="line-height: 1.3;" class="btn btn-outline-primary btn-sm">임시 저장하기</button>
					</div>
					
					<div class="email-select-content">
						
						<div class="emailSendContents">
							<div class="form-group col-sm-2">
							    <label for="exampleFormControlInput1">보내는 사람</label>
							</div>
							
							<div class="form-group col-sm-7">
							 	<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
							</div>
					    </div>
					    
					    <div class="emailSendContentsRev">
					    
					    <!--  받는 사람 -->
							<div class="form-group col-sm-2">
							    <label for="exampleFormControlInput1">받는 사람</label>
							</div>
							
						
							<div class="form-group col-sm-7 revEmail">
								<c:forEach begin="0" end="10">
							 	<input type="email" class="form-control col-sm-3" id="exampleFormControlInput1" placeholder="name1234ho@example.com">
							 	</c:forEach>
							 
							</div>
							
							<div class="form-group col-sm-2 rev-to-me">
							 	<input type="button" class="btn btn-outline-primary btn-sm" role="button" value="주소록">
							</div>
					    </div>
					    
					    <!-- 참조 -->
					    <div class="emailSendContentsRef">
							<div class="form-group col-sm-2">
							    <label for="exampleFormControlInput1">참조</label>
							</div>
							
						
							<div class="form-group col-sm-7 revRef">
								<c:forEach begin="0" end="10">
							 	<input type="email" class="form-control col-sm-3" id="exampleFormControlInput1" placeholder="name1234ho@example.com">
							 	</c:forEach>
							</div>
							
					    </div>
					    
					    <!-- 제목 -->
					    <div class="emailSendContentsHeader">
							<div class="form-group col-sm-1">
							    <label for="exampleFormControlInput1">제목</label>
							</div>
							
							<div class="form-group col-sm-1 importSend">
								<div class="form-check">
								  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
								  <label class="form-check-label" for="defaultCheck1">
								    중요!
								  </label>
								</div>
							</div>
							
							<div class="form-group col-sm-7">
							 	<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="프론트 작업중입니다. 테스트 부탁드립니다. 안녕하세요.">
							</div>
					    </div>
			
						<!-- 내용 -->
						<textarea name="emailDoc" id="summernote" value=""></textarea>
							
						
						
						<!-- 파일첨부 -->
						<div class="custom-file">
							  <input type="file" class="custom-file-input" id="customFile">
							  <label class="custom-file-label" for="customFile">Choose file</label>
						</div>
					
						<!-- 버튼 -->
						<div class="send-and-cancel">
						<button type="button" class="btn btn-primary btn-lg">보내기</button>
						<button type="button" class="btn btn-primary btn-lg">취소하기</button>
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
	
	/* 텍스트 쓰기*/
	$('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 500,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video',]],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });


</script>
	
</body>
</html>