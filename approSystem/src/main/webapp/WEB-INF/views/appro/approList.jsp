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
		    	<div>
		        	<div>문서조회</div>
		        </div>
          		<article class="w-100 px-3"> 
            		<!-- 검색박스  : 우선 get으로 테스트하고 post 로 변경하기 -->
            		<form id="" name="" action="" method="get" class="form-inline">              
	            		<div class="form-group mb-2">
		            		<select id="schType" class="form-control mr-2" name="schType">
		                		<option value="sel" >부서</option>
		                  		<option value="dev">개발팀</option>
		                	</select>
		                	
	                		<select name="statusType" class="form-control" id="statusType" >
					            <option value="" >직급</option>
					            <option value="AA" >사장</option>
					            <option value="BB">책임</option>
					            <option value="CC">팀장</option>
					            <option value="DD">사수</option>
					            <option value="EE">사원</option>
			                </select>
	                		<input type="text" id="schTxt" class="form-control mr-2"  name="schTxt" />             
	              		</div>
		              	<div class="form-group mb-2">
			                <input type="date" id="startDate" name="startDate" class="form-control mr-2">
			                ~
			                <input type="date" id="endDate" name="endDate" class="form-control mx-2">  
			                <input type="submit" value="검색" />
		              	</div>
            		</form>
				</article>
				<div class="mb-2 d-flex justify-content-end">
					<c:if test="${ position != 'AA'  }" >
	            	<input type="button" value="글 작성" onclick="location.href='approWrite'"/>
	          		</c:if>
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