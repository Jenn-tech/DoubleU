<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, inital-scale=1, shrink-to-fit=no">
<title>Hello, world!</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="/css/MainIndex.css">
</head>


<body>
	<!-- main-GNB -->
	<header class="container-fluid main-gnb">
			<jsp:include page="./MainPage/header.jsp"/>
	</header>
	<!-- main-GNB code 끝 -->

	<!-- main-body code -->
	<div class="container-fluid index-body">
		<div class="row" style="margin-top: 1.5em; ">
			<!-- 프로필, 근태관리 code -->
			<div class="col-2 index-first-row">
				<div class="card index-profile rounded shadow-sm">
					<div class="card-body index-profile-main">
						<img alt="" class="card-img-top index-profile-img" src="images/profile.png">
					</div>
					
					<div class="card-body text-center border-top index-profile-text">
					<strong class="text-muted">정해준</strong> <br>
					<span class="small text-muted">직급: 사원</span> <br>
					<span class="small text-muted">부서: 기획부</span> <br>
					
					</div> 
				</div>
				
				<div class="card bg-white rounded shadow-sm border index-attendance">
					<div class="card-body">
						<strong class="text-muted">근태 관리</strong> <br>
						<p class="small lh-sm text-muted">2021-01-31(일) 21:58</p>
						<br>
						<div>
							<span class="small lh-sm text-muted float-left"
								style="display: inline-block">출근 시간</span> <span
								class="small lh-sm text-muted float-right"
								style="display: inline-block;">미등록</span>
						</div>
						<br>
						<div>
							<span class="small lh-sm text-muted float-left"
								style="display: inline-block">퇴근 시간</span> <span
								class="small lh-sm text-muted float-right"
								style="display: inline-block;">미등록</span>
						</div>
						<br>
						<br>
						<div class="index-attendance-btns">
							<input type="button" value="출근" class="btn btn-primary btn-sm float-left" style="margin-bottom: 1em; width: 60px;">
							<input type="button" value="퇴근" class="btn btn-primary btn-sm float-right" style="margin-bottom: 1em;  width: 60px;"> 
						</div>
						<div>
							<select class="form-control form-control-sm" style="width: 90%; margin: 0.5em auto 0;">
								<option value=""> 근무 상태 </option>
								<option value=""> 외근 </option>
								<option value=""> 출장 </option>
								<option value=""> 반차</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<!-- 프로필, 근태관리 code 끝 -->

			<!-- 테이블 code -->
			<div class="col-7">
				<div class="container index-notice">
					<strong class="d-block text-gray-dark" style="margin-bottom: 0.2em;">공지사항</strong>
					<table class="table table-hover table-sm">
						<thead class="text-muted  text-gray-dark" style="font-size: 0.8em;">
							<tr>
								<th scope="col">기안일</th>
								<th scope="col">결재양식</th>
								<th scope="col">긴급</th>
								<th scope="col">제목</th>
								<th scope="col">기안자</th>
								<th scope="col">결재 상태</th>
							</tr>
						</thead>
						
						<tbody class="text-muted" style="font-size: 0.8em;">
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
						</tbody>
					</table>
					<small class="d-block text-end text-right" style="margin-top: -1em;">
						 <a href="#">더보기</a>
					</small>
				</div>
				
				<div class="container index-mail-box">
					<strong class="d-block text-gray-dark" style="margin-bottom: 0.2em;">최근 메일함</strong>
					<table class="table table-hover table-sm">
						<thead class="text-muted  text-gray-dark" style="font-size: 0.8em;">
							<tr>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일자</th>
								<th scope="col">조회수</th>
							</tr>
						</thead>
						<tbody class="text-muted" style="font-size: 0.8em;">
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
							<tr>
								<td>오늘 날씨가 좋습니다.</td>
								<td>정해준 사원</td>
								<td>2021-01-31</td>
								<td>0</td>
							</tr>
						</tbody>
					</table>
					<small class="d-block text-end text-right" style="margin-top: -1em;">
						 <a href="#">더보기</a>
					</small>
				</div>
				
			</div>

			<!-- 캘린더 code -->
			<div class="col-3">
				<div class="p-3 bg-white rounded shadow-sm border">
					<h6 class="border-bottom pb-2 mb-0">전사 일정</h6>
					<div class="d-flex text-muted pt-3">
						<p class="pb-3 mb-0 small lh-sm border-bottom" style="width: 100%">
							<a href="#"> <strong class="d-block text-gray-dark">2021-01-31(일)</strong>
								임직원 전체 회의
							</a>
						</p>
					</div>
					<div class="d-flex text-muted pt-3">
						<p class="pb-3 mb-0 small lh-sm border-bottom" style="width: 100%">
							<a href="#"> <strong class="d-block text-gray-dark">2021-01-31(일)</strong>
								임직원 전체 회의
							</a>
						</p>
					</div>
					<div class="d-flex text-muted pt-3">
						<p class="pb-3 mb-0 small lh-sm border-bottom" style="width: 100%">
							<a href="#"> <strong class="d-block text-gray-dark">2021-01-31(일)</strong>
								임직원 전체 회의
							</a>
						</p>
					</div>
					<small class="d-block text-end mt-3 text-right"> <a
						href="#">All updates</a>
					</small>
				</div>
			</div>

		</div>
	</div>




	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>
</body>

</html>

