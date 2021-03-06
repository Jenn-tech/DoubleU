<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>프로필</title>

<!-- awesome font CDN(W icon) -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
	crossorigin="anonymous" />

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
	<header class="container-fluid main-gnb">
		<jsp:include page="../MainPage/header.jsp" />
	</header>

	<!-- 그룹웨어 GNB code 끝 -->

	<section class="e-approval-container">

		<!-- e-approval-lnb code -->
		<jsp:include page="member_aside.jsp" />
		<!-- lnb code 끝 -->
		<main class="e-approval-article">

			<!-- 게시판 검색바 code -->
			<div class="e-approval-search-bar">
				<form class="e-approval-search-form" action="" name="frm_approval"
					method="post">
					<div class="e-approval-form-box">
						<span>프로필</span> <input class="btn btn-outline-primary btn-sm"
							type="button" value="검색" /> <input
							class="form-control form-control-sm" type="text"
							placeholder="Search" aria-label="Search" id="approvalFindStr">
						
						<select name="CPinfo" id="selectBox"
							class="form-control form-control-sm e-approval-select-box" onChange="location.href=this.value">
							<option selected>부서</option>
								<option value="memberManage">관리부</option>
								<option value="memberBusiness">영업부</option>
								<option value="memberIT">it기술부</option> 
							</select>
						</div>
					</form>
				</div>

			<!-- ========== -->
			
			<!-- 전사게시판 사내공지 code -->
			<div class="container">
        		  <table id="tableText" class="table table-hover">
  	<thread>
  		<tr>
  			<th>이름</th>
  			<th>부서</th>
  			<th>팀</th>
  			<th>이메일</th>
  			<th>전화번호</th>
  		</tr>
  	</thread>
  	<tbody>
  	<c:forEach items='${contentList1}' var='profile'>
  		<tr>
  			<td>${profile.memberName}</td> 
  			<td>${profile.memberDepartment}</td>
  			<td>${profile.memberTeam}</td>
  			<td>${profile.memberEmail}</td>
  			<td>${profile.memberPhoneNumber}</td>
  		</tr>
  	</c:forEach>	
  	</tbody>
  </table>
			
			
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
		</div>
		</main>
	
	</section>

</body>
</html>