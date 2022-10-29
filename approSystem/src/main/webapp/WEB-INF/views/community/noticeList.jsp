<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 공지사항 게시글 리스트 페이지 - PAS </title>
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
        <article></article>
        <!-- 묻고답하기 -->
        <div class="communitySection2 container text-center py-2">
          
          <h3>공지사항</h3>
          
          <div class="mb-2 d-flex justify-content-between">
          	<!-- search bar -->
	        <form action="noticeList" method="post">
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
          	<input type="button" value="글 작성" onclick="noticeWrite()"/>
          </div>

          <div class="listSt">
            <table>
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
              </tr>
              <c:forEach var="notice" items="${ notice }" varStatus="status" >		                
              <tr onclick="location.href='/community/noticeDetail?notice_no=${notice.notice_no}'">
                <td>${ status.count }</td>              
                <td>${ notice.notice_title }</td>
                <td>${ notice.notice_name }</td>
              	<td>${ notice.notice_date }</td>
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
	<!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- myJS -->
    <script src="/JS/main.js"></script>
    <script>
    	function noticeWrite(){
    		if( ${ position == '부장' || position == '차장' || position == '과장' } ){
    			location.href='/community/noticeWrite';
    		} 
    		else {
    			alert('공지사항 작성 권한이 없는 아이디입니다.');
    		}    		
    	}   
    </script>
  </body>
</html>