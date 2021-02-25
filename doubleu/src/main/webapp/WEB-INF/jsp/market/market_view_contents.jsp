<%@page import="com.doubleu.market.vo.MarketAttVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm_market_view" method="get">
<table  class="table table-striped market-view-table" id="market_table">
			  <thead>
			    <tr >
			      <th scope="col" style="background-color:#f1f2f4;">카테고리</th>
			      <td scope="col" >${vo.marketCategory }</td>
			      <th scope="col" style="background-color:#f1f2f4;">날짜</th>
			      <td scope="col" >${vo.marketDate}</td>
			    </tr>
			    <tr >
			      <th scope="col"style="background-color:#f1f2f4;">작성자</th>
			      <td scope="col" style="border-bottom: 1px solid #dee2e6;">${vo.marketWriter}</td>
			      <th scope="col" style="background-color:#f1f2f4;">조회수</th>
			      <td scope="col" style="border-bottom: 1px solid #dee2e6;">23</td>
			    </tr>
			  </thead>
			  
			</table>
			<div class='market-view-container'>
				
		
				<!--  <img src="../images/market/tum.jpeg" class="rounded float-left market-img" alt="...">-->
				<div class='market-view-form' style="display:flex;min-height:350px;">	
				
						<div id="marketSlider" class="carousel slide" data-ride="carousel" style="width:250px;">
					  <div class="carousel-inner">
						    <div class="carousel-item active">
								<img src='images/market/${vo.attlist[0].oriFile }' class='d-block w-100' alt="..."/>	
							</div>
							<c:choose>
								<c:when test="${fn:length(vo.attlist) > 1 }">
									<c:forEach  var="i" begin="1" end ="${fn:length(vo.attlist)-1 }" >
										<div class="carousel-item ">
											<img src='images/market/${vo.attlist[i].oriFile}' class='d-block w-100' alt="..."/>	
										</div>
									</c:forEach>
								</c:when>
							</c:choose>
				  </div>
					  <a class="carousel-control-prev" href="#marketSlider" role="button" data-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="carousel-control-next" href="#marketSlider" role="button" data-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					  </a>
					</div>	
				
				
							
					<div class="form-group-container" style="width:100%; margin-left:50px;">	
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">제품명</label>
					    <div class="col-sm-8">
					      <div class="form-control" id="inputEmail3" >${vo.marketSubject }</div>
					    </div>
					  </div>
	
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">가격</label>
					    
					    <div class="col-sm-6" style="display: flex;">
					      <div class="form-control" id="inputEmail3" >${vo.marketPrice }</div>

					    </div>
  							<button data-toggle="modal" 	data-target="#goAccount" type="button" value="찜목록" class="btn btn-primary mb-2">계좌보기</button>
					  </div>
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">❤</label>
					    
					    <div class="col-sm-6" style="display: flex;">
					      <div class="form-control" id="inputEmail3" >0</div>
						</div>
						
  							<button type="submit"  id="godibModal"class="btn btn-primary mb-2">찜하기</button>
					  </div>
					    </div>
					
				</div>
				
				<div class="card">
				  <div class="card-body">
						${vo.marketDoc }
					</div>
				</div>
				
				<!-- hidden -->
				<input type='text' name='findStr' value='${page.findStr }'/>
				<input type='text' name='nowPage' value='${page.nowPage }'/>
				<input type='text' name='marketNo'  value='${vo.marketNo}'/>
				
				<div class="market-btn-zone">
					<button class="btn btn-primary" type="button" onclick = "goBack();">목록</button>
					
					<c:if test="${vo.marketWriter==member.memberName }">
						<button class="btn btn-primary" type="submit" onclick = "goModify(${vo.marketNo});">수정</button>
						<button class="btn btn-primary" type="button" id='btnDelmodal' data-toggle="modal" data-target="#delModal">삭제</button>
					</c:if>
				</div>
			 </div>
</form>			 

	<div class="modal fade" id="delModal" tabindex="-1" aria-labelledby="delModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"
				style="width: 80%; height: 250px; top: 200px;">
				<div class="modal-header">
					<h5 class="modal-title" id="btnDelmodal">게시물 삭제</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-dialog modal-sm">정말 삭제하시겠습니까?  </div>
				<div class="modal-footer">
        			<button type="button" class="btn btn-primary" id = 'market_btnDel'>네</button>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
				</div>
			</div>
		</div>

		
	</div>


<script>date()</script>
</body>
</html>