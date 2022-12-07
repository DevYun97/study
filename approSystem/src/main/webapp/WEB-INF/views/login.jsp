<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login 페이지</title>
<!-- 부트스트랩4 CSS 연결 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- 부트아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<!-- myCSS -->
<link rel="stylesheet" href="../pas/css/mainCss.css" >
</head>
<body>
 
 	<!-- 헤더 -->
	<c:import url="header.jsp"></c:import>
	
	<!-- main -->
    <main class="d-flex flex-column justify-content-center align-items-center mt-0">
      <div class="text-center mb-4">
        <h2>사내 결제 시스템</h2>
        <small>ProjectApproSystem</small>
      </div>
      <div style="width: 500px;">
        <form action="loginAciton" method="post" onsubmit="return nullChecking()">
          <div class="form-group row">
            <label for="member_id" class="col-sm-2 col-form-label">아이디</label>
            <div class="col-sm-10">
              <input type="text" class="form-control nullPointer" id="member_id" name="member_id" placeholder="아이디를 입력해주세요" />
            </div>
          </div>
          <div class="form-group row">
            <label for="member_pw" class="col-sm-2 col-form-label ">비밀번호</label>
            <div class="col-sm-10">
              <input type="password" class="form-control nullPointer" id="member_pw" name="member_pw" placeholder="비밀번호를 입력해주세요" />
            </div>
          </div>
          <div class="text-right">
            <input type="submit" value="로그인" />
          </div>          
        </form>      
      </div>
    </main>
    
    <!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <!-- JS -->
    <script src="/pas/JS/main.js"></script>
  </body>
</html>