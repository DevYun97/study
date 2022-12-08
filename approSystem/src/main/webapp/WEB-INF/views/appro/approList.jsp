<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 서류 페이지 리스트 - PAS </title>
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
		    	
		    	<h3>문서조회</h3>
		       
		       <div class="d-flex justify-content-start mb-2 mt-3">
			   		<form action="approList" method="post" class="w-100 text-start">
				        <input type="hidden" name="pageNo" id="pageNo" value="1" />
				        <input type="hidden" name="listSize" id="listSize" value="10" />
				        <input type="date" id="startDate" name="startDate" class="">
				            ~
			            <input type="date" id="endDate" name="endDate" class=" mx-2">  
			            <input type="text" id="schText" name="schText" class=" mr-2" />             	              		
			            <input type="submit" id="schBtn" value="검색" />
		        	</form>
	          	</div>
		       				
	          	<div class="listSt">
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
		                    <td>
			                    <c:if test ="${ report.report_status != '반려' }" >
				                    <c:if test="${ (report.report_status != '임시저장' && report.report_status != '최종승인' ) && report.report_name == name }">
				                    결재 진행중
				                    </c:if>
				                    <c:if test="${ (report.report_status != '임시저장' && report.report_status != '최종승인' ) && report.report_name != name }">
				                    미결재 서류
				                    </c:if>
				                    <c:if test="${ report.report_status == '임시저장' || report.report_status == '최종승인'}" >
				                    ${ report.report_status}
				                    </c:if>
				                    </c:if>
			                    <c:if test="${ report.report_status == '반려'}" >
			                    ${ report.report_status}
			                    </c:if>
		                    </td>
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
    <script src="/pas/JS/main.js"></script>
  </body>
</html>