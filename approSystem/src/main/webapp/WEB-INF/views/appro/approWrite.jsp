<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
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
      
      <section class="d-flex flex-column" style="width:900px; min-width: 680px;">
        
        <h2 class="text-center mt-4 mb-5">보 고 서</h2>
	
        <!-- 체크박스  -->   

        <form id="writeFrm" name="writeFrm" >
        	<c:if test="${ not empty report.report_no  }">
        	<input type="hidden" name="report_no" value="${ report.report_no }"/>        
            </c:if>
            <input type="hidden" name="report_id" value="${ id }" />
            <div class="form-group row">
              <label for="report_name" class="col-2 col-form-label">작성자 :</label>
              <div class="col-10">
                <input type="text" class="form-control nullPointer" value="${ name }" />
              	<input type="hidden" id="report_name" name="report_name" value="${ name }"  />
              </div>
            </div>
            
            <div class="form-group row">
              <label for="report_title" class="col-2 col-form-label">제목 :</label>
              <div class="col-10">
                <input type="text" class="form-control nullPointer" id="report_title" name="report_title" value="${ report.report_title }" />
              </div>
            </div>
            <div class="form-group">
              <label for="report_content">내용</label>
              <textarea class="form-control TASizsFixed" id="report_content" name="report_content" rows="3">${ report.report_content }</textarea>
            </div>
            
            <input type="hidden" id="report_status" name="report_status" value="${ report.report_status }" />
            <input type="file" />         	
        </form>
        <hr>
        <div>
        	<input type="button" class="" value="취소" onclick="location.href='approList'" />
            <input type="button" class="" value="임시저장" onclick="writeBtnA()" />			
            <input type="button" class="" value="결재" onclick="writeBtnB()" />	
        </div>
      </section>      
    </main>
	<!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- testTool 하단 스크립트 추가 후 replace에 이름 넣어주면 text에디터? 사용 가능 -->
    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
  	<script>CKEDITOR.replace('report_content');</script>
   
    <!-- myJS -->
    <script src="/JS/main.js"></script>
    <script src="/JS/appro.js"></script>
    <script>
    function writeBtnB() {
    	 
		var title = $("#report_title").val();
		var statusValue = $("#report_status");
		
		if( !title ) {
			alert("제목을  입력해주세요.");			
			}
		else {		
			if( ( statusValue.val() == 'TS' || statusValue.val() == 'RT') && ${ position == 'EE'} ) {
				alert("결재대기 등록");
				$("#report_status").val('DR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if(( statusValue.val() == 'TS' || statusValue.val() == 'RT') && ${ position == 'DD'}){
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if(( statusValue.val() == 'TS' || statusValue.val() == 'RT') && ${ position == 'CC'}){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if(( statusValue.val() == 'TS' || statusValue.val() == 'RT') && ${ position == 'BB'}){
				alert("결재대기 등록");
				$("#report_status").val('AR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if(statusValue.val() == '' && ${ position == 'EE'}) {
				alert("결재대기 등록");
				$("#report_status").val('DR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && ${ position == 'DD'}){
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && ${ position == 'CC'}){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && ${ position == 'BB'}){
				alert("결재대기 등록");
				$("#report_status").val('AR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else {
				alert("임시작성 상태에서만 글 수정이 가능합니다.");				
			}
		}			
	}
    </script>
  </body>
</html>