<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 사원 리스트 페이지 - PAS </title>
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
       
       	<!-- mainContent -->
 		<section class="d-flex flex-column" style="width:800px;">
        	<!-- 묻고답하기 -->
        	<div class="communitySection2 container text-center py-2">
	        	<div>
	            	<div>회원조회</div>
	        	</div>
          		<article class="w-100 px-3"> 
            		<!-- 검색박스  : 우선 get으로 테스트하고 post 로 변경하기 -->
            		<form id="" name="" action="" method="get" class="form-inline">              
	              		<div class="form-group mb-2">
		                	<select id="schType" class="form-control mr-2" name="schType">
		                  		<option value="sel" >부서</option>
		                  		<option value=""></option>
		                	</select>
		                	
	                		<select name="statusType" class="form-control" id="statusType" >
			                  <option value="" >직급</option>
			                  <option value="aa" >사장</option>
			                  <option value="bb">책임</option>
			                  <option value="cc">팀장</option>
			                  <option value="dd">사수</option>
			                  <option value="ff">사원</option>
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
          		<div class="qna">
            		<table>
		            	<tr>
			                <th>번호</th>
			                <th>아이디</th>
			                <th>사원명</th>
			                <th>소속부서</th>
			                <th>직급</th>
			                <th>입사일</th>
		              	</tr>
		              	<c:forEach var="mem" items="${ getMemberList }" varStatus="status" >
		                <tr onclick="window.open('/member/memberCard?member_id=${ mem.member_id }', '신규 아이디 발급', 'width=700,height=450,location=no,status=no,scrollbars=no')">
		                    <td> ${ status.count } </td>
		                    <td> ${ mem.member_id } </td>
		                    <td> ${ mem.member_name } </td>
		                    <td>${ mem.member_dep }</td>
		                    <td>${ mem.member_position }</td>
		                    <td>${ mem.member_join }</td>
		                </tr>
		                </c:forEach>
            		</table>
          		</div>
        	</div>

	        <div class="mb-2 d-flex justify-content-end">
	          <input type="button" value="신규 아이디 발급" onclick="popupHideAndShow(target = 'memberAdd');">
	        </div>
    	</section>
 	</main>

	<!-- 팝업창 관리 -->
	<c:import url="../subPage.jsp"></c:import>
    	
	<!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- myJS -->
    <script src="/JS/main.js"></script>
    <!-- child 팝업창 -->
    <script>
      function openWindow( no ){
        window.open('/member/memberCard?member_id=${mem.member_id}', '신규 아이디 발급', 'width=700,height=450,location=no,status=no,scrollbars=no')
      }
    </script>
  </body>
</html>