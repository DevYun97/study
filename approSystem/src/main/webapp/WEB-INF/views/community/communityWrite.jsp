<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 커뮤니티 게시글 작성 페이지 - PAS </title>
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
      
      <section class="w-100 d-flex flex-column align-items-center" >
        <form id="communityFrm" method="post" style="width:900px;" >
          <input type="hidden" id="commu_no" name="commu_no" value="${ community.commu_no }" />          
          <input type="hidden" id="commu_id" name="commu_id" value="${ id }" />
          <div class="communitySection2 container text-center">
            <div class="mb-5">
              <h2>커뮤니티</h2>
              <small>작성자의 정보는 익명으로 처리되며 작성자만 조회가능합니다.</small>
            </div>
            <div class="main">
              <table>
                <tr>
                  <th>제목</th>
                  <td>
                    <input type="text" name="commu_title" id="commu_title" value="${ community.commu_title }" class="w-75" required />
                  </td>
                </tr>
                <tr>
                  <th>작성자</th>
                  <td>
                  	<input type="text" class="w-75 bg-white" value="${ name }" disabled />
                  	<input type="hidden" name="commu_name" id="commun_name" value="${ name }"  />
                  </td>
                </tr>
              </table>              
            </div>
          </div>
          <div class="container content_textarea">
            <div>
              <textarea id="commu_content" name="commu_content">
              ${ community.commu_content }
              </textarea>
            </div>
          </div>

          <!-- 등록 버튼칸 -->
          <div class="text-center">
          	<c:if test="${ community.commu_no == null }">
            <input type="submit" class="" value="등록" onclick="comWriteBtn()" />
            </c:if>
            <c:if test="${ community.commu_no != null }">
            <input type="submit" class="" value="수정" onclick="comUpdateBtn()" />
            </c:if>
            <input type="button" class="" onclick="location.href='/pas/community/communityList'" value="취소">
          </div>      
        </form>
      </section>
      
    </main>
	<!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- testTool 하단 스크립트 추가 후 replace에 이름 넣어주면 text에디터? 사용 가능 -->
    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
  	<script>CKEDITOR.replace('commu_content');</script>
       
    <!-- myJS -->
    <script src="/pas/JS/main.js"></script>
  </body>
</html>