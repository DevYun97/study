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
        
        <article class="w-100 px-3">
        
          <!-- 검색박스  : 우선 get으로 테스트하고 post 로 변경하기 -->
          <form id="" name="" action="" method="get" class="form-inline">
            
            <div class="form-group mb-2">
              <select id="schType" class="form-control mr-2" name="schType">
                <option value="sel" >선택</option>
                <option value="memName">작성자</option>
                <option value="lTitle">결재자</option>
                <option value="lContent">제목+내용</option>
              </select>
              
              <input type="text" id="schTxt" class="form-control mr-2"  name="schTxt" />
              
              <select name="statusType" class="form-control" id="statusType" >
                <option value="" >결재상태</option>
                <option value="aa" >임시저장</option>
                <option value="bb">결재대기</option>
                <option value="cc">결재중</option>
                <option value="dd">결재완료</option>
                <option value="ff">반려</option>
              </select>
            </div>

            <div class="form-group mb-2">
              <input type="date" id="startDate" name="startDate" class="form-control mr-2">
              ~
              <input type="date" id="endDate" name="endDate" class="form-control mx-2">  
              <input type="submit" value="검색" />
            </div>
          </form>
        </article>


        <!-- 묻고답하기 -->
        <div class="communitySection2 container text-center py-2">
          

          <div class="mb-2 d-flex justify-content-end">
            <input type="button" value="글 작성" onclick="location.href='approWritePage.html'"/>
          </div>

          <div class="qna">
            <table>
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>결제자</th>
                <th>상태</th>
                <th>결제일</th>
              </tr>
              <c:forEach var="dto" items="${ qna_list }">
                <tr>
                    <td>1</td>
                    <td>문서 제목</td>
                    <td>김방방</td>
                    <td>22.00.00</td>
                    <td>이땡떙</td>
                    <td>반려</td>
                    <td>22.00.00</td>
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