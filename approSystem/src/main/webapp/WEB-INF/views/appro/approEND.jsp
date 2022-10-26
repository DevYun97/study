<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 완료 된 문서 리스트 - PAS </title>
<!-- 부트스트랩4 CSS 연결 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- 부트아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<!-- myCSS -->
<link rel="stylesheet" href="../css/mainCss.css" >
<link rel="stylesheet" href="../css/test.css" >
<link rel="stylesheet" href="../css/write.css" >   
</head>
<body>
	
	<!-- 헤더 -->
	<c:import url="../header.jsp"></c:import>
	
	<main>
    	<c:import url="../navBar.jsp"></c:import>
      
      	<section class="d-flex flex-column" style="width:800px;">
      		<div class="communitySection2 container text-center py-2">
		    	<div>
		        	<h2>문서조회</h2>
		        </div>
		        
		        <div class="d-flex justify-content-between mb-2 mt-3">
		          	<!-- search bar -->
			        <form action="approEND" method="post">
				        <input type="hidden" name="pageNo" id="pageNo" value="1" />
				        <input type="hidden" name="listSize" id="listSize" value="10" />
				        <table>
				            <tr>              
				              	<td>
				                	<input type="text" name="schText" id="schText" value="${ sch.schText }" placeholder="검색내용을 입력해주세요." />
				              	</td>
				              	<td>
				                	<input type="submit" id="schBtn" value="검색">
				            	</td>
				        	</tr>
				        </table>
		        	</form>
	          	</div>
	          
	          	<div class="qna">
	          		<table>
	              		<tr>
			                <th>번호</th>
			                <th>제목</th>
			                <th>작성자</th>
			                <th>작성일</th>
			                <th>결재자</th>
			                <th>상태</th>
			            </tr>
	              		<c:forEach var="report" items="${ reportList }" varStatus="status" >
		                <tr onclick="location.href='approDetail?report_no=${report.report_no}'">
		                    <td>${ status.count }</td>
		                    <td>${ report.report_title }</td>
		                    <td>${ report.report_name }</td>
		                    <td>${ report.report_date }</td>
		                    <td>${ report.report_approver }</td>
		                    <td>${ report.report_status }</td>
		               	</tr>
		               	</c:forEach>
	            	</table>
				</div>
       		</div>
    	</section>
	</main>
	<!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- myJS -->
    <script src="/JS/main.js"></script>
  </body>
</html>