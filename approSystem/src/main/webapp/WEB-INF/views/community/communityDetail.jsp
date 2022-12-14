<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 커뮤니티 게시글 상세 페이지 - PAS </title>
<!-- 부트스트랩4 CSS 연결 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- 부트아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<!-- myCSS -->
<link rel="stylesheet" href="../css/mainCss.css" >
<link rel="stylesheet" href="../css/write.css" >
</head>
<body>
	
	<!-- 헤더 -->
	<c:import url="../header.jsp"></c:import>
	
	<main>
      <c:import url="../navBar.jsp"></c:import>
      
      <section class="d-flex flex-column align-items-center" >
        <div style="width:900px;">
          <div class="communitySection2 container text-center">
            <div class="mb-4">
              <h2>커뮤니티</h2>
              <small>사내 익명 커뮤니티 페이지입니다.</small>
            </div>
            <div class="d-flex justify-content-between align-items-center">
            	<div>
            		<input type="button" class="font14" onclick="location.href='/pas/community/communityList'" value="목록">
	            </div>
	           
	            <div class="py-0">
	              <c:if test="${ community.commu_id == id }">
	              <input type="button" value="수정" onclick="location.href='/pas/community/communityUpdate?commu_no=${ community.commu_no }'" />
	              <input type="button" value="삭제" onclick="location.href='/pas/community/communityDeleteAction?commu_no=${ community.commu_no }'" />
	              </c:if>
	            </div>
            </div>           
            <div class="main">
              <table>
                <tr>
                  <th>제목</th>
                  <td colspan="3">${ community.commu_title }</td>
                </tr>
                <tr>
                  <th>작성자</th>
                  <td colspan="3"> 익명 </td>
                </tr>
                <tr>
                  <th>작성일</th>
                  <td>${ community.commu_date }</td>
                  <th>조회수 | 댓글 </th>
                  <td>
                  	<i class="bi bi-person pr-1"></i> : ${ community.commu_hit } 
                  	<span class="px-2 ">|</span> 
                  	<i class="bi bi-chat-square-heart pr-1"></i> : ${ reCount }
                  </td>
                </tr>
              </table>              
            </div>
          </div>
          <div class="container content_textarea pb-2">
            <div class="w-100 TASizsFixed bg-white border-bottom px-1 py-2" style="min-height: 100px;">
            	${ community.commu_content }
          	</div>
			
			<div class="p-3">
              <form action="replyWriteAction" method="post">
                <input type="hidden" name="commu_no" value="${ community.commu_no }" />
                <input type="hidden" name="reply_id" value="${ id }" />
                <input type="hidden" name="reply_name" value="${ name }" />                
                <input type="text" name="reply_content" class="col-9 mt-3" placeholder="댓글을 달아주세요" />
                <input type="submit" class="col-2 mt-3" value="댓글 등록" />
              </form>             
            </div>
			            
            <hr>  
          </div>
          <div class="mb-3" style="width: 900px; padding: 0 15px">
           <h5>댓글</h5>           
            <c:forEach var="reply" items="${ reply }" varStatus="re" >
            <div class="my-4 pb-3 border-bottom">           
              <div>
              <c:if test="${ community.commu_id != reply.reply_id }">
                <span class="font-weight-bold mr-2">익명${ re.count } </span><small> ${ reply.reply_date }</small>
              </c:if>
              
              <c:if test="${ community.commu_id == reply.reply_id }">
                <span class="font-weight-bold mr-2" style="color:red;">작성자</span><small> ${ reply.reply_date }</small>
              </c:if>
              </div>
              <div>
                ${ reply.reply_content }
              </div>           
            </div>
            </c:forEach>  
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