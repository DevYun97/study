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
          
          <!-- myCard -->
			<div id="userInfo" class="w-100 py-4 px-5">                   	
				<div>
	          		<div class="form-row justify-content-between">
			            <div class="col-6 mb-2">
			            	<label for="member_id" class="font14 text-black-50 mb-0">사원 아이디</label>
			              	<input type="text" class="form-control-plaintext" id="member_id" name="member_id" value="${ id }" readonly />
			            </div>
			            <div class="text-right mt-2 mb-3">
			          		<input type="button" value="비밀번호 변경" onclick="popupHideAndShow(target ='pwUpdate');" >
			          	</div>
		          	</div>
		          	<div class="form-row">
			            <div class="col-6 mb-2">
			            	<label for="member_name" class="font14 text-black-50">사원 이름</label>
			              	<input type="text" class="form-control bg-white" id="member_name" name="member_ name" value="${ name }" readonly />			             
			            </div>
			            <div class="col-3 mb-2">
				        	<label for="member_dep" class="font14 text-black-50">부서</label>
				            <input type="text" class="form-control bg-white" id="member_dep" value="${ mem.member_dep }" readonly />         
			            </div>
		            	<div class="col-3 mb-1">
			            	<label for="member_position" class="font14 text-black-50">직급</label>
			              	<input type="text" class="form-control bg-white" id="member_position" value="${ mem.member_position }" readonly />         
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
              <span class="text-right pointer pl-2 my-2" onclick="location.href='/community/noticeList'">
                more <i class="bi bi-chevron-right " ></i>
              </span>
            </div>
            <hr>
            <c:forEach var="notice" items="${ notice }" begin="0" end="2" >		 
            <div class="w-100 d-flex justify-content-between align-items-center mt-2 pb-3">
                <a href="/community/noticeDetail?notice_no=${notice.notice_no}">${notice.notice_title}</a>             
                <small class="text-right">${notice.notice_date}</small>                        
            </div>          	 
            </c:forEach>
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
                <span class="pointer" onclick="popupHideAndShow(target ='aaaa');"> 사용자 매뉴얼 </span>                        
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
              <span class="text-right pointer pl-2 my-2" onclick="location.href='/community/communityList'">
                more <i class="bi bi-chevron-right " ></i>
              </span>
            </div>
            <hr>
            <c:forEach var="community" items="${ community }" begin="0" end="2" >		 
            <div class="w-100 d-flex justify-content-between align-items-center mt-2 pb-3">
                <a href="/community/communityDetail?commu_no=${community.commu_no}">${community.commu_title}</a>             
                <small class="text-right">${community.commu_date}</small>                        
            </div>          	 
            </c:forEach>       
          </div>
        </article>
      </section>
    </main>

    <!-- 회원카드 -->
    <div class=" container-sm container-fluid position-absolute d-none flex-column bg-white border border-dark-50 rounded p-2 "style="top:50%; left: 50%; transform:translate(-50%, -50%); width: 400px;" id="pwUpdate">
      	<div class="w-100 d-flex flex-row justify-content-end">
        	<i class="bi bi-x-lg" width="30px" height="30px" onclick="popupHideAndShow(target = 'pwUpdate');"></i>
      	</div>
      	<div class="w-100 d-flex flex-column justify-content-center align-items-center">
        	<h6 class="">비밀번호 변경하기</h6>
        	<form action="member/pwChange" method="get" id="pwChangeFrm" class="d-flex flex-column align-items-center col-12 mt-2" onsubmit="return pwChangeOk();">
	          	<input type="hidden" name="member_id" value="${ id }"  /> 
	          	<input type="password" class="mt-2 mb-1 w-75 form-control" id="checkPw" placeholder="기존 비밀번호를 입력하세요" />
	          	<input type="password" class="mt-2 mb-1 w-75 bg-white form-control" id="pw1" placeholder="새 비밀번호를 입력하세요" disabled/>
	          	<input type="password" class="my-1 w-75 bg-white form-control" name="member_pw" id="pw2" placeholder="새 비밀번호 재확인" disabled/>
	          	<div id="pwCkNo" style="color: red; display: none;" >*비밀번호가 일치하지 않습니다*</div>
		      	<div id="pwCkOk" style="color: green; display: none;" >*비밀번호가 일치합니다*</div>
	          	<input type="submit" id="pwSubmitBtn" class="btn btn-primary col-6 mt-3 mb-5" value="확인" disabled />
        	</form>
      </div>
	</div>
    
    <!-- 팝업창 -->
    <c:import url="subPage.jsp"></c:import>
    <!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <!-- myJS -->
    <script src="/JS/main.js"></script>
    <script src="/JS/memberJS.js"></script>
    <script>
    </script>
  </body>
</html>