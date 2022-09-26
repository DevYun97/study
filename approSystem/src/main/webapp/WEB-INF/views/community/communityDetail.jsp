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
      
      <section class="w-100 d-flex flex-column align-items-center" >
        <div style="width:900px;">
          <div class="communitySection2 container text-center">
            <div class="mb-5">
              <h2>커뮤니티</h2>
              <small>사내 익명 커뮤니티 페이지입니다.</small>
            </div>
            <div class="text-right mb-2 mr-2">
              <input type="button" value="수정" onclick="" />
              <input type="button" value="삭제" onclick="" />
            </div>
            <div class="main">
              <table>
                <tr>
                  <th>제목</th>
                  <td colspan="3">글 제목</td>
                </tr>
                <tr>
                  <th>작성자</th>
                  <td colspan="3"> 익명 </td>
                </tr>
                <tr>
                  <th>작성일</th>
                  <td>2022.00.00</td>
                  <th>조회수</th>
                  <td>0</td>
                </tr>
              </table>              
            </div>
          </div>
          <div class="container content_textarea pb-2">
            <div>
              <textarea id="commu_content" name="commu_content" class="w-100 TASizsFixed bg-white" value="" style="min-height: 100px;" disabled >
              </textarea>
            </div>
            <!-- 버튼칸 -->
            <div class="text-left mt-2 pb-2">
              <input type="button" class="" onclick="location.href='/community/communityList'" value="목록">
            </div>
            <hr>  
          </div>
          
          <div class="mb-3" style="width: 900px; padding: 0 15px">
            
            <p>댓글 : 0개</p>
            <div class="border p-3 text-right">
              <form action="" method="post">
                <div class="w-100 text-left mb-1">댓글 작성</div>
                <textarea name="" id="" class="w-100 border TASizsFixed bg-white" rows="2" ></textarea>
                <input type="button" value="댓글 쓰기" />
              </form>             
            </div>   
            
            <div class="my-4 pb-3 border-bottom">
              <div>
                <span class="font-weight-bold mr-2">익명1 </span><small> 날짜</small>
              </div>
              <div>
                글 내용
              </div>
            </div>
            <div class="my-4 pb-3 border-bottom">
              <div>
                <span class="font-weight-bold mr-2">익명2</span><small> 날짜</small>
              </div>
              <div>
                글 내용
              </div>
            </div>

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