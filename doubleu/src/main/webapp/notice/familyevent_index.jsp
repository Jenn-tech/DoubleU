<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>전사게시판-경조사</title>

<!-- awesome font CDN(W icon) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />

<!-- favicon -->
<link rel="shortcut icon" href="../images/w_icon.ico">
<link rel="icon" href="w_icon.ico">

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

<!-- main page CSS -->
<link rel="stylesheet" href="/css/MainIndex.css">
<!-- 전사게시판 CSS -->
<link rel="stylesheet" href="/css/notice/notice.css">

</head>
<body>

	<!-- 그룹웨어 GNB -->
	<header>
		<header class="container-fluid main-gnb">
		<jsp:include page="/MainPage/header.jsp"/>
	 </header>

	<!-- 그룹웨어 GNB code 끝 -->

	<section class="e-approval-container">
	
		<!-- e-approval-lnb code -->
		<nav class="e-approval-lnb">
			<div class="e-approval-lnb-content">
				<h4>게시판</h4>
				<div class="e-approval-form-btn">
					<input type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#exampleModal" value="글쓰기">
				</div>
				<div class="e-approval-approval-list">
					<span>전사게시판</span>
					<ul>
						<li><a href="#">사내공지</a></li>
						<li><a href="#">경조사</a></li>
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
			</div>
		</nav>
	<!-- lnb code 끝 -->

		<main class="e-approval-article">

				<!-- 게시판 검색바 code -->
				<div class="e-approval-search-bar">
					<form class="e-approval-search-form" action="" name="frm_approval" method="post">
						<div class="e-approval-form-box">
							<span>경조사</span>
							<input class="btn btn-outline-primary btn-sm" type="button" value="검색" />
							<input class="form-control form-control-sm" type="text" placeholder="Search" aria-label="Search" id="approvalFindStr">
								
							<select	class="form-control form-control-sm e-approval-select-box">
								<option selected>제목</option>
								<option value="0">내용</option>
								<option value="1">제목+내용</option>
								<option value="2">작성자</option>
							</select>
						</div>
					</form>
				</div>

			<!-- ========== -->
			
			<!-- 전사게시판 사내공지 code -->
			<div class="container">
        		<div class = "row">
          			<table class = "table table-striped" style="text-align:center; border:1px solid #ffffff">
                		<thead>
                    		<tr>
		                        <th style = "background-color:#f8f9fa; text-align:center;">번호</th>
		                        <th style = "background-color:#f8f9fa; text-align:center;">분류</th>
		                        <th style = "background-color:#f8f9fa; text-align:center;">제목</th>
		                        <th style = "background-color:#f8f9fa; text-align:center;">작성자</th>
		                        <th style = "background-color:#f8f9fa; text-align:center;">날짜</th>
		                        <th style = "background-color:#f8f9fa; text-align:center;">조회수</th>
	                    	</tr>
	                	</thead>
	                	<tbody>
	                		<c:forEach begin="1" end="10">
	                    		<tr>
			                        <td style = "background-color:#ffffff; text-align:center;">1</td>
			                        <td style = "background-color:#ffffff; text-align:center;">결혼</td>
			                        <td style = "background-color:#ffffff; text-align:center;">관리부 누구 본인 결혼</td>
			                        <td style = "background-color:#ffffff; text-align:center;">나</td>
			                        <td style = "background-color:#ffffff; text-align:center;">2021.01.31</td>
			                        <td style = "background-color:#ffffff; text-align:center;">31</td>
		                        </tr>
	                        </c:forEach>
                		</tbody>
            		</table>
        		</div>
   			</div>
						
			
			<!-- 리스트 페이징 아이콘 code -->
			<div class="e-approval-list-pagination">
				<nav aria-label="Page navigation example">
					<ul class="pagination pagination-sm text-muted justify-content-center">  
						<li class="page-item"><a class="page-link" href="#" style="font-size: 0.7em">first</a></li>
						<li class="page-item"><a class="page-link" href="#" style="font-size: 0.7em">&lt;</a></li>
						<li class="page-item"><a class="page-link" href="#" style="font-size: 0.7em">1</a></li>
						<li class="page-item"><a class="page-link" href="#" style="font-size: 0.7em">2</a></li>
						<li class="page-item"><a class="page-link" href="#" style="font-size: 0.7em">3</a></li>
						<li class="page-item"><a class="page-link" href="#" style="font-size: 0.7em">&gt;</a></li>
						<li class="page-item"><a class="page-link" href="#" style="font-size: 0.7em">last</a></li>
					</ul>
				</nav>
			</div>
			<!-- ========== -->

		</main>
	</section>
	
		<!-- 글쓰기 모달창 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"
				style="width: 80%; height: 300px; top: 200px;">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">글쓰기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="moadl-body approval-scroll">
					<div class="accordion" id="accordionExample">
						<div class="card">
							<div class="card-header" id="headingOne">
								<h6 class="mb-0">
									<select
										class="form-control form-control-sm e-approval-select-box">
										<option selected>게시판 선택</option>
										<option value="1">중고게시판</option>
									</select>
								</h6>
							</div>

						</div>


					</div>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-secondary" data-dismiss="modal"
						value="close"> <input type="button"
						class="btn btn-primary" value="선택">
				</div>
			</div>
		</div>
	</div>
 
</body>
</html>