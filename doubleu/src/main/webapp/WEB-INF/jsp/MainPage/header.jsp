<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<<<<<<< HEAD

	<nav class="navbar navbar-expand-lg navbar-light bg-light main-gnb-content">
		<a class="navbar-brand navbar-text-light " href="/MainPage/index.jsp" style="margin-right: 41em">
			<img alt="" src="../images/notice/로고7.png" width="150px" style="margin-left: 8px">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto main-gnb-menu" style="width:600px; margin-left:-150px;">
				<li class="nav-item active">
					<a class="nav-link" href="/MainPage/index.jsp">홈<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/noticeIndex">게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="/profileIndex">주소록</a></li>
				<li class="nav-item"><a class="nav-link" href="/calenderMonth">캘린더</a></li>
				<li class="nav-item"><a class="nav-link" href="/emailIndex">메일함</a></li>
				<li class="nav-item"><a class="nav-link" href="/approvalIndex?memberNo=${member.memberName }">전자결재</a></li>
				<li class="nav-item"><a class="nav-link" href="/marketIndex?dibUser=${member.memberName }">더블마켓</a></li>
			</ul>
	
			<ul class="navbar-nav my-2 my-lg-0">
				<div class="header-member-name">${member.memberName }&nbsp<a style="color:#aaa;">님 </a> </div>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" 
					aria-haspopup="true" aria-expanded="false">
						<span class="navbar-toggler-icon"></span>
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown" style="left:-100px;">
						<a class="dropdown-item  " href="/memberModifyIndex">정보 수정</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item  " href="/loginOut">로그아웃</a>
					</div>
				</li>
			</ul>
=======
	<div class="bg-light main-gnb-content">
		<div class="header-logo">
			<a class="" href="/mainPage">
				<img alt="" src="../images/notice/로고7.png" width="150px" style="margin-left: 8px">
			</a>
		</div>
		<div class="header-content">
			<div class="main-gnb-menu">
				<ul class="nav ">
					<li class="nav-item active">
						<a class="nav-link" href="/mainPage">홈<span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/noticeIndex">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="/profileIndex">주소록</a></li>
					<li class="nav-item"><a class="nav-link" href="/calenderMonth">캘린더</a></li>
					<li class="nav-item"><a class="nav-link" href="/emailIndex">메일함</a></li>
					<li class="nav-item"><a class="nav-link" href="/approvalIndex?memberNo=${member.memberName }">전자결재</a></li>
					<li class="nav-item"><a class="nav-link" href="/marketIndex">더블마켓</a></li>
				</ul>
			</div>
			<div class="main-gnb-toggle">
				<div class="header-member-name">
					<a>${member.memberName }&nbsp님</a>
				 </div>
				 <div class="header-member-toggle-menu">
						<div class="nav-item dropdown dropdown-content">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" 
							aria-haspopup="true" aria-expanded="false">
							<span><i class="bi bi-justify" style="font-size: 25px;"></i></span>
							</a>
							<div class="dropdown-menu dropdown-content" aria-labelledby="navbarDropdown" style="left:-100px;">
								<a class="dropdown-item  " href="/memberModifyIndex">정보 수정</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item  " href="/loginOut">로그아웃</a>
							</div>
						</div>
				</div>
			</div>
>>>>>>> d64df2e75e5652fe5574bd4775cecb92d7e9d4e6
		</div>
	</div>
</body>
</html>