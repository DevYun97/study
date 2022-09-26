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
          <div>
            <div>공지사항</div>
          </div>

          <div class="mb-2 d-flex justify-content-end">
            <input type="button" value="글 작성" onclick="location.href='/community/noticeWrite'"/>
          </div>

          <div class="qna">
            <table>
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
              </tr>
              <tr onclick="location.href='/community/noticeDetail'">
                <td>1</td>
                <td>커뮤니티 글 제목</td>
                <td>작성자 이름</td>
              	<td>22.00.00</td>
              </tr>             
            </table>
          </div>
        </div>

        <!-- search bar -->
        <div class="search container">
          <table>
            <tr>
              <td>
                <select name="내용" id="">
                  <option value="">제목</option>
                  <option value="">내용</option>
                  <option value="">작성자</option>
                </select>
              </td>
              <td>
                <input type="text">
              </td>
              <td>
                <input type="button" value="검색">
              </td>
            </tr>
          </table>
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