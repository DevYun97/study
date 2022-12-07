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
          		<article class="d-flex justify-content-between w-100 mt-3"> 
            		<!-- 검색박스  : 우선 get으로 테스트하고 post 로 변경하기 -->
            		<form action="memberList" method="post" class="form-inline">              
	              		<input type="hidden" name="pageNo" id="pageNo" value="1" />
        				<input type="hidden" name="listSize" id="listSize" value="9" />
	              		<div class="form-group mb-2">
		                	<select name="depType" id="depType" class="form-control">
		                  		<option selected>부서</option>
		                  		<option value="개발팀" <c:if test="${ sch.depType == '개발팀' }" > selected </c:if>>개발팀</option>
		                  		<option value="회계팀" <c:if test="${ sch.depType == '회계팀' }" > selected </c:if>>회계팀</option>
		                  		<option value="인사팀" <c:if test="${ sch.depType == '인사팀' }" > selected </c:if>>인사팀</option>
		                	</select>
		                	
	                		<select name="statusType" class="form-control mx-2" id="statusType" >
			                  <option >직급</option>
			                  <option value="AA" <c:if test="${ sch.statusType == 'AA' }" > selected </c:if> >부장</option>
			                  <option value="BB" <c:if test="${ sch.statusType == 'BB' }" > selected </c:if>>차장</option>
			                  <option value="CC" <c:if test="${ sch.statusType == 'CC' }" > selected </c:if>>과장</option>
			                  <option value="DD" <c:if test="${ sch.statusType == 'DD' }" > selected </c:if>>대리</option>
			                  <option value="EE" <c:if test="${ sch.statusType == 'EE' }" > selected </c:if>>사원</option>
			                </select>
	                		<input type="text" name="schText" id="schText" value="${ sch.schText }" class="form-control mr-2" />             
	              		</div>
		              	<div class="form-group mb-2">                  
			                <input type="submit" id="schBtn" value="검색" />
		              	</div>
            		</form>
            		<div class="mb-2 d-flex justify-content-end">
			          <input type="button" value="신규 아이디 발급" onclick="popupHideAndShow(target = 'memberAdd');">
			        </div>
          		</article>
          		<div class="listSt">
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
		                <tr onclick="window.open('/pas/member/memberCard?member_id=${ mem.member_id }', '신규 아이디 발급', 'width=700,height=450,location=no,status=no,scrollbars=no')">
		                    <td> ${ status.count } </td>
		                    <td> ${ mem.member_id } </td>
		                    <td> ${ mem.member_name } </td>
		                    <td>${ mem.member_dep }</td>
		                    <td>
		                    	<c:if test="${ mem.member_position == 'AA' }">부장</c:if>
		                    	<c:if test="${ mem.member_position == 'BB' }">차장</c:if>
		                    	<c:if test="${ mem.member_position == 'CC' }">과장</c:if>
		                    	<c:if test="${ mem.member_position == 'DD' }">대리</c:if>
		                    	<c:if test="${ mem.member_position == 'EE' }">사원</c:if>
		                    </td>
		                    <td>${ mem.member_join }</td>
		                </tr>
		                </c:forEach>
            		</table>
          		</div>
        	</div>
        	<!-- pageBtn -->
	        <div class="container row my-3 mx-auto" style="position:fixed; top: 720px; z-index:1500;">
				<nav class="mx-auto">
					<c:if test="${page.curBlock > 0}">
				    	<a onclick="goPage('1')">[처음]</a>
					</c:if>
					<!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
					<c:if test="${page.curBlock > 1}">
				    	<a onclick="goPage('${page.prevPage}')">[이전]</a>
					</c:if>
					<!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 -->
					<c:forEach var="num" begin="${page.blockBegin}" end="${page.blockEnd}">
					<!-- **현재페이지이면 하이퍼링크 제거 -->
				    	<c:choose>
				        	<c:when test="${num == page.curPage}">
				            	<span style="color: red">${num}</span>
				        	</c:when>
				    		<c:otherwise>
				            	<a onclick="goPage('${num}')">${num}</a>
				        	</c:otherwise>
				        </c:choose>
					</c:forEach>	                
					<!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
					<c:if test="${page.curBlock <= page.totBlock}">
				    	<a onclick="goPage('${page.nextPage}')">[다음]</a>
					</c:if>	                
					<!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
					<c:if test="${page.curPage <= page.totPage}">
						<a onclick="goPage('${page.totPage}')">[끝]</a>
					</c:if>    
				</nav>
			</div>
    	</section>
 	</main>

	<!-- 팝업창 관리 -->
	<c:import url="../subPage.jsp"></c:import>
    	
	<!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- myJS -->
    <script src="/pas/JS/main.js"></script>
    <script src="/pas/JS/memberJS.js"></script>
    <!-- child 팝업창 -->
    <script>
    	function openWindow( no ){   		
    		window.open('/member/memberCard?member_id=${mem.member_id}', '사원 카드', 'width=700,height=430,location=no,status=no,scrollbars=no');   	      	    		
        }
    </script>
  </body>
</html>