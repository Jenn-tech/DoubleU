<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="e-approval-lnb">
			<div class="e-approval-lnb-content">
				<h4>게시판</h4>
				<div class="e-approval-form-btn">
<!-- 					<input type="button" class="btn btn-primary btn-lg"
						data-toggle="modal" data-target="#exampleModal" value="글쓰기">
 -->					
 				<input type="button" class="btn btn-primary btn-lg"
						onClick="location.href='marketInsert'" value="글쓰기">
	 			<input type="button" class="btn btn-primary btn-lg"
						onClick="location.href='noticeInsert'" value="사내공지 글쓰기">
	 			<input type="button" class="btn btn-primary btn-lg"
						onClick="location.href='familyeventInsert'" value="경조사 글쓰기">									
				</div>
				<div class="e-approval-approval-list">
				<span>전사게시판</span>
				<ul>
					<li><a href="noticeIndex">사내공지</a></li>
					<li><a href="familyeventIndex">경조사</a></li>
				</ul>
			</div>
			<div class="e-approval-approval-list">
				<span>부서게시판</span>					
				<ul>
					<li><a href="#">부서던가</a></li>
					<li><a href="#">자유던가</a></li>
					<li><a href="#">부서인 자유였지..</a></li>
				</ul>
			</div>
				<div class="e-approval-approval-list">
					<span><a href="marketIndex">중고게시판</a></span>
					<!-- 
					<ul>

						<li><a href="#">나눠야하나</a></li>
					
					</ul>
					 -->
				</div>

			</div>
		</nav>
</body>
</html>