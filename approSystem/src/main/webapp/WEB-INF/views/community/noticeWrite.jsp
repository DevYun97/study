<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 공지사항 글 작성 페이지 - PAS </title>
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
        <form method="post" action="" style="width:900px;" onsubmit="return ">
          <div class="communitySection2 container text-center">
            <div class="mb-5">
              <h2>공지사항</h2>
              <small>사내 공지사항을 등록해주세요</small>
            </div>
            <div class="main">
              <table>
                <tr>
                  <th>제목</th>
                  <td>
                    <input type="text" name="notice_title" id="notice_title" class="w-75" required />
                  </td>
                </tr>
                <tr>
                  <th>작성자</th>
                  <td><input type="text" name="notice_name" id="notice_name" class="w-75 bg-white" disabled />
                  </td>
                </tr>
              </table>              
            </div>
          </div>
          <div class="container content_textarea">
            <div>
              <textarea id="notice_content" name="notice_content">
              </textarea>
            </div>
          </div>

          <!-- 등록 버튼칸 -->
          <div class="text-center">
            <input type="submit" class="" value="등록">
            <input type="button" class="" onclick="location.href='/community/noticeList'" value="취소">
          </div>      
      	</form>
      
      </section>
      
    </main>
	<!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- testTool 하단 스크립트 추가 후 replace에 이름 넣어주면 text에디터? 사용 가능 -->
    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
  	<script>CKEDITOR.replace('notice_content');</script>
    
    <!-- myJS -->
    <script src="/JS/main.js"></script>
  </body>
</html>