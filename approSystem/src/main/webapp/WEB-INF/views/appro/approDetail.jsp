<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title> 서류 상세 페이지 - PAS </title>
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
      
      <section class="d-flex flex-column" style="width:900px; min-width: 680px;">
        
        <h2 class="text-center mt-4 mb-5">보 고 서</h2>
	
        <!-- 체크박스  -->   

        <form id="writeFrm" name="writeFrm">
            <input type="hidden" name="lIdx" value="">
            <div class="d-flex ">
              <div class="w-100 mr-2">
                <div class="form-group row">
                  <label for="report_no" class="col-sm-2 col-form-label A">문서번호 :</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control-plaintext" id="report_no" name="report_no" value="${ report.report_no }" />
                  </div>
                </div>

                <div class="form-group row">
                  <label for="report_name" class="col-sm-2 col-form-label A">작성자 :</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control-plaintext" id="report_name" name="report_name" value="${ report.report_name }" />
                  </div>
                </div>


                <div class="form-group row">
                  <label for="report_date" class="col-sm-2 col-form-label A">작성일 :</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control-plaintext" id="report_date" name="report_date" value="${ report.report_date }" />
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
              <label for="report_title" class="col-sm-2 col-form-label">제목 :</label>
              <div class="col-10">
                <input type="text" class="form-control" id="report_title" name="report_title" value="${ report.report_title} ">
              </div>
            </div>
            <div class="form-group">
              <label for="report_content">내용</label>
              <div id="report_content" class="form-control" style="min-height:120px;">
              ${ report.report_content }
              </div>
            </div>

            <input type="hidden" id="report_status" name="report_status" value="" />
            <input type="file" />
          	
        </form>
        <hr>
        <div>
          <input type="button" value="취소" onclick="location.href='approList'" />
            <input type="button" value="수정" onclick="location.href='reportUpdate?report_no=${report.report_no}'" />
            <input type="button" value="appro" onclick="window.open('/appro/approPop', '결재 팝업창', 'width=700, height=450, location=no, status=no, scrollbars=no')">			
        </div>
      </section>
      <!-- 댓글 같은 ? 결제자 정보 -->
      <section style="min-width: 300px; background-color: rgb(243, 243, 243);">
        <div>
          <p>결제선 <hr> 
          </p>
          <div class="w-100 d-flex justify-content-between">
            <span class="font-weight-bold font18" >결재자이름</span>
            <input type="button" value="상태" class="text-right font12" style="pointer-events: none;" />
          </div>
          <p>
            결재내용
            <small>결재일</small>
          </p>
        </div>
      </section>
      
    </main>
	<!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>    
    <!-- child 팝업창 -->
    <script>
      function openWindow( no ){
        window.open('/appro/approPop', '결재 팝업창', 'width=700, height=450, location=no, status=no, scrollbars=no')
      }
    </script>
    <!-- myJS -->
    <script src="/JS/main.js"></script>
  </body>
</html>