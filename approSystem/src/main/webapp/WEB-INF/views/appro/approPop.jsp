<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재 팝업창</title>
<!-- 부트스트랩4 CSS 연결 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- 부트아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
</head>
<body>
	<header class="fixed-top text-center">
    	<h4 class="mt-3" >서류 결재 팝업창</h4>
    </header>
    <main class="d-flex justify-content-center mt-5 pt-4">
    	<form action="approAction" name="approFrm" id="approFrm" method="post" class="w-75 text-left">
    		<input type="hidden" name="appro_id" value="${ id }" />
    		<div class="form-group row">
            	<label for="report_no" class="col-2 col-form-label">문서번호:</label>
              	<div class="col-10">
                	<input type="text" class="form-control" value="${ report.report_no }">
              		<input type="hidden" id="report_no" name="report_no" value="${ report.report_no }" />
              	</div>
        	</div>
        	<div class="form-group row">
            	<label for="report_title" class="col-2 col-form-label">문서제목:</label>
              	<div class="col-10">
                	<input type="text" class="form-control" id="report_title" name="report_title" value="${ report.report_title }">
              	</div>
        	</div>
        	<div class="form-group row">
            	<label for="report_approver" class="col-2 col-form-label">결재자 : </label>
              	<div class="col-10">
                	<input type="text" class="form-control" value="${ name }" />
              		<input type="hidden" id="report_approver" name="report_approver" value="${ name }" />
              	</div>
        	</div>
        	<div class="form-group">
              	<label for="appro_content">내용</label>
              	<textarea class="form-control TASizsFixed" id="appro_content" name="appro_content" rows="2"></textarea>
            </div>
            <input type="hidden" id="report_status" name="report_status" value="${ report.report_status }" />
            <input type="hidden" id="appro_status" name="appro_status" value="" />
	        <div>
	          <input type="button" value="반려" onclick="returnBtn()" />
	          <c:if test="${ position != '부장' }">
	          <input type="button" value="결재" onclick="approBtn()" />
	          </c:if>
	          <c:if test="${ position == '과장' || position == '차장' || position == '부장' }" >
	          <input type="button" value="최종승인" onclick="approEndBtn()" />
	          </c:if>
	        </div>
		</form>
	</main>
	<input type="hidden" id="position" value="${ position }" />
    <!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script src="/pas/JS/appro.js"></script>
  </body>
</html> 