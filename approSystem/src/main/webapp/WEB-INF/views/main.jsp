<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
 <!-- 검색엔진 최적화를 위해 검색엔진이 사용할 키워드 정의 -->
<meta name="keywords" content="PAS, MeongGae Yun, ApproSystem" />
<!-- 웹 페이지 설명 정의 -->
<meta name="description" content="ApproSystem WebSite Project" />
<!-- 웹 페이지 저자 명기 -->
<meta name="author" content="MeongGae Yun" />
<!-- 웹 페이지 Refresh 초 단위 -->
<!-- <meta http-equiv="refresh" content="" />
<meta http-equiv="refresh" content="3; URL=list"/> 일명 납치태그라고도 불리며 지정된 시간이 지나면 URL 경로로 이동 시킴 -->

<title> 메인 페이지 - PAS </title>
<!-- 부트스트랩4 CSS 연결 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- 부트아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<!-- myCSS -->
<link rel="stylesheet" href="../css/mainCss.css" >
<link rel="stylesheet" href="../css/test.css" >
</head>
<body>
	
	<!-- 헤더 -->
	<c:import url="header.jsp"></c:import>
	
	<main>
      <c:import url="navBar.jsp"></c:import>

      <!-- mainContent -->
      <section class="d-flex w-100 flex-column">
        
        <article id="userCard" class="d-flex border" style="max-width: 800px; min-width: 400px;" >
          <div id="userInfo" class="py-3 px-4 border-right">
            <div class="text-right">
              <small class="border rounded p-1 bg-secondary text-white " onclick="popupHideAndShow(target ='myCard');"> 정보수정 </small>
            </div>
            <div class="font25 text-center my-2">
              <span>홍길동</span><span> ( 사원 )</span>              
            </div>
            <div>              
              userID
            </div>
          </div>
          
          <div class="">

            <div class="card-group text-right">
              <div class="">
                <div class="card-body">
                  <h6 class="card-title">진행 중 서류</h5>
                  <p class="card-text">1건</p>
                </div>
              </div>
              <div class="">               
                <div class="card-body ">
                  <h6 class="card-title">반려 된 문서</h6>
                  <p class="card-text">1건</p>
                </div>
              </div>
              <div class="">
                <div class="card-body">
                  <h6 class="card-title"> 테스트 </h5>
                  <p class="card-text">1건</p>
                </div>
              </div>
            </div>

          </div>
        </article>

        <article class="d-flex justify-content-between" style="max-width: 800px;">
          <div class="border mt-3 p-2" style="width: 570px; min-width: 400px;">
            <div class="d-flex justify-content-between align-items-center">
              <span>
                <i class="bi bi-megaphone"></i>
                공지사항
              </span>
              <span class="text-right pointer pl-2 my-2" onclick="location.href='/notice/noticePage.html'">
                more <i class="bi bi-chevron-right " ></i>
              </span>
            </div>
            <hr>
            <div class="w-100 d-flex justify-content-between align-items-center mt-2 pb-3">
                <a href=""> 공지사항 제목 </a>             
                <small class="text-right">날짜</small>                        
            </div>
            <div class="w-100 d-flex justify-content-between align-items-center mt-2 pb-3">
              <a href=""> 공지사항 제목 </a>             
              <small class="text-right">날짜</small>                        
            </div>       
            <div class="w-100 d-flex justify-content-between align-items-center mt-2 pb-3">
              <a href=""> 공지사항 제목 </a>             
              <small class="text-right">날짜</small>                        
            </div>   
          </div>
  
          <div class="border mt-3 p-2" style="width: 220px;">
            <div class="d-flex justify-content-between pl-2 my-2">
              <span>
                <i class="bi bi-clipboard-check"></i>
                문서
              </span>
            </div>
            <hr>
            <div class="w-100 d-flex justify-content-start align-items-center mt-2 pb-3">
                <span class="pointer" onclick="popupHideAndShow(target ='aaaa');"> 사용자 메뉴얼 </span>                        
            </div>
            <div class="w-100 d-flex justify-content-start align-items-center mt-2 pb-3">
              <span class="pointer" onclick="popupHideAndShow(target ='PASIntro');"> 프로젝트 소개 </span>                           
            </div>          
          </div>
        </article>

        <article class="d-flex justify-content-between " style="max-width: 800px;">
          <div class="border mt-3 p-2" style="width: 570px; min-width: 400px;">
            <div class="d-flex justify-content-between align-items-center">
              <span>
                <i class="bi bi-chat-square-dots"></i>
                커뮤니티
              </span>
              <span class="text-right pointer pl-2 my-2" onclick="location.href='/community/communityPage.html'">
                more <i class="bi bi-chevron-right " ></i>
              </span>
            </div>
            <hr>
            <div class="w-100 d-flex justify-content-between align-items-center mt-2 pb-3">
                <a href=""> 커뮤니티 제목 </a>             
                <small class="text-right">날짜</small>                        
            </div>
            <div class="w-100 d-flex justify-content-between align-items-center mt-2 pb-3">
              <a href=""> 커뮤니티 제목 </a>             
              <small class="text-right">날짜</small>                        
            </div>
            <div class="w-100 d-flex justify-content-between align-items-center mt-2 pb-3">
              <a href=""> 커뮤니티 제목 </a>             
              <small class="text-right">날짜</small>                        
            </div>        
          </div>
        </article>
      </section>
    </main>

    <!-- 팝업창_ 팝업창 좌표는 화면 정가운데 고정시킴 -->
    <!-- 회원카드 -->
    <div class=" container-sm container-fluid position-absolute d-none flex-column bg-white border border-dark-50 rounded p-2 "style="top:50%; left: 50%; transform:translate(-50%, -50%); width: 550px;" id="myCard">
      <div class="w-100 d-flex flex-row justify-content-end">
        <i class="bi bi-x-lg" width="30px" height="30px" onclick="popupHideAndShow(target = 'myCard');"></i>
      </div>
      <form action="" method="post" class="w-100 d-flex flex-row justify-content-around mt-4 mb-3 needs-validation" onsubmit="return nullChecking();" enctype="multipart/form-data" accept-charset="UTF-8" >     
        <div class="form-row mx-1">
          <div class="border" style="width:100px; height: 100px;">
            <img src="" class="" name="" id="" />
          </div>
          <div>
            <label for="file_name" class="border rounded my-2 text-center" style="width: 100px; color: white; background-color: rgb(175, 175, 175);">이미지 등록</label>
            <input type="file" class="d-none" name="" id="file_name" accept=".gif, .png, .jpg, .jpeg, bmp" onchange="fileCheck()" >
          </div>
        </div>
        <!--  -->
        <div>
          <div class="form-row">
            <div class="col-6 mb-2">
              <label for="member_id">사원 아이디</label>
              <input type="text" class="form-control-plaintext" id="member_id" name="member_id" value="Mark" readonly />
            </div>
            <div class="col-3 mb-2">
              <label for="">부서</label>
              <input type="text" class="form-control-plaintext" id="" readonly />         
            </div>
            <div class="col-3 mb-1">
              <label for="">직급</label>
              <input type="text" class="form-control-plaintext" id="" readonly />         
            </div>
          </div>
          <div class="form-row">
            <div class="col-6 mb-2">
              <label for="member_pw">비밀번호</label>
              <input type="password" class="form-control nullPointer" id="member_pw" name="member_pw" required onchange="pwChange();">
            </div>
            <div class="col-6 mb-2">
              <label for="member_id">사원 이름</label>
              <input type="text" class="form-control nullPointer" id="member_id" name="member_id" required>
            </div>
          </div>
        </div>
       </form>
       <div class="w-100 d-flex justify-content-center mb-2">
        <button class=" col-6 btn btn-primary" type="submit" onclick="">수정</button>
       </div>
       
    </div>
    
    <!-- 팝업창 -->
    <c:import url="subPage.jsp"></c:import>
    

    <!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- myJS -->
    <script src="/JS/main.js"></script>
  </body>
</html>