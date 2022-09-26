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

<title> 서류 작성 페이지 - PAS </title>
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
	
	<main class="d-flex justify-content-between">
      <c:import url="../navBar.jsp"></c:import>
      
      <section class="d-flex flex-column w-100" style="width:800px; min-width: 680px;">
        
        <h2 class="text-center mt-4 mb-5">보 고 서</h2>
	
        <!-- 체크박스  -->   

        <form id="writeFrm" name="writeFrm">
            <input type="hidden" name="lIdx" value="">
            <div class="d-flex ">
              <div class="w-100 mr-2">
                <div class="form-group row">
                  <label for="appro_date" class="col-sm-2 col-form-label A">문서번호 :</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control-plaintext" id="appro_date" name="appro_title">
                  </div>
                </div>

                <div class="form-group row">
                  <label for="appro_date" class="col-sm-2 col-form-label A">작성자 :</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control-plaintext" id="appro_date" name="appro_title">
                  </div>
                </div>


                <div class="form-group row">
                  <label for="appro_date" class="col-sm-2 col-form-label A">작성일 :</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control-plaintext" id="appro_date" name="appro_title">
                  </div>
                </div>
              </div>

              <div>
                <table border="1" style="width: 210px;" >
                  <tr class="text-center">
                    <th>결재요청</th>
                    <th>과장</th>
                    <th>부장</th>
                  </tr>
                  <tr class="text-right">
                    <td>
                        <input type="checkbox" class="mx-1" disabled />             			
                    </td>
                    <td>
                      <input type="checkbox" class="mx-1" disabled />            			
                    </td>
                    <td>            
                      <input type="checkbox" class="mx-1" disabled />
                    </td>
                  </tr>
                </table> 
              </div>
            </div>
            

            <div class="form-group row">
              <label for="appro_title" class="col-sm-2 col-form-label">제목 :</label>
              <div class="col-10">
                <input type="password" class="form-control" id="appro_title" name="appro_title">
              </div>
            </div>
            <div class="form-group">
              <label for="appro_content">내용</label>
              <textarea class="form-control TASizsFixed" id="appro_content" name="appro_content" rows="3"></textarea>
            </div>

            <input type="hidden" id="lStatus" name="list_status" value="" />
            <input type="file" />
          	
        </form>
        <hr>
        <div>
          <input type="button" value="취소"	onclick="location.href='approListPage.html'" />
            <input type="button" value="임시저장" onclick="writeBtnA()" />			
            <input type="button" value="결제" onclick="writeBtnB()" />
            <input type="button" value="appro" onclick="window.open('/appro/approPop.html', '결제 팝업창', 'width=700, height=450, location=no, status=no, scrollbars=no')">			
        </div>
      </section>
      <!-- 댓글 같은 ? 결제자 정보 -->
      <section style="min-width: 300px; background-color: rgb(243, 243, 243);">
        <div>
          <p>결제선 <hr> </p>
          <div class="w-100 d-flex justify-content-between">
            <span class="font-weight-bold" style="font-size: 18px;" >결제자이름</span>
            <input type="button" value="상태" class="text-right font12" style="pointer-events: none;" />
          </div>
          <p>
            결제내용
            <small>결제일</small>
          </p>
        </div>
      </section>
      
    </main>
	<!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- testTool 하단 스크립트 추가 후 replace에 이름 넣어주면 text에디터? 사용 가능 -->
    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
  	<script>CKEDITOR.replace('appro_content');</script>
    
    
    <!-- myJS -->
    <script src="/JS/main.js"></script>
  </body>
</html>