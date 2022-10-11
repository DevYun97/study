<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 사원 카드 </title>
<!-- 부트스트랩4 CSS 연결 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- 부트아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="../mainCSS.css" >
</head>
<body>
	<!-- 공용 헤더 -->
    <div class="text-center mt-3">
      <h4>사원 정보 카드</h4>
      <small>사원 정보를 상세보기 / 수정할 수 있는 카드입니다.</small>
      <hr>
    </div>   
    <main class="d-flex justify-content-between">
      <form action="memberUpdate" method="post" name="memberUpdatefrm" class="w-100 text-left px-3">
        <input type="hidden" id="member_id" name="member_id" value="${ member.member_id }" />
        <div class="form-group row">
          <div class="col-6 mb-3">
            <label for="member_name">이름</label>
            <input type="text" class="form-control bg-white" id="member_name" value="${ member.member_name }" disabled required>
          </div>
          <div class="col-3 mb-3">
            <label for="member_join">가입일</label>
            <input type="text" class="form-control bg-white" id="member_join" value="${ member.member_join }" disabled required>
          </div>
          <div class="col-3 mb-3">
            <label for="member_gender">성별</label>
            <input type="text" class="form-control bg-white" id="member_gender" value="${ member.member_gender }" disabled required>
          </div>
        </div> 
        <div class="form-group row">
          <div class="col-6 mb-3">
            <label for="member_dep">부서</label>
            <select class="custom-select" id="member_dep" name="member_dep" required>
              <option selected disabled>Choose...</option>
              <option value="dev" <c:if test="${ member.member_dep == 'dev' }" > selected </c:if> >개발팀</option>
            </select>           
          </div>
          <div class="col-6 mb-3">
            <label for="member_position">직급</label>
            <select class="custom-select" id="member_position" name="member_position" required>
              <option selected disabled >Choose...</option>
              <option value="AA" <c:if test="${ member.member_position == 'AA' }" > selected </c:if>> 책임</option>
              <option value="BB" <c:if test="${ member.member_position == 'BB' }" > selected </c:if>> 책임</option>
              <option value="CC" <c:if test="${ member.member_position == 'CC' }" > selected </c:if>> 팀장</option>
              <option value="DD" <c:if test="${ member.member_position == 'DD' }" > selected </c:if>> 사수</option>
              <option value="EE" <c:if test="${ member.member_position == 'EE' }" > selected </c:if>> 사원</option>
            </select>            
          </div>
        </div>      
        <div>
          <input type="button" value="수정" onclick="updateBtn();"/>
          <input type="button" value="확인" onclick="window.close();" />
          <input type="button" value="삭제" onclick="deleteBtn()" />
        </div>
      </form>
      
    </main>
    <!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- testTool 하단 스크립트 추가 후 replace에 이름 넣어주면 text에디터? 사용 가능 -->
    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
  	<script>CKEDITOR.replace('appro_content');</script>

    <!-- child 팝업창 -->
    <script type="text/javascript">

    	function updateBtn() {
    	  
    		if( ${ position == 'AA' || position == 'BB' || ( position == 'CC' && dep == '인사과')} ){
    			window.opener.name="parent";
    	        document.memberUpdatefrm.target = "parent";
    	        document.memberUpdatefrm.method = "post";
    	        document.memberUpdatefrm.action = "memberUpdate";
    	        document.memberUpdatefrm.submit();
    	        window.close();	
    		}
    		else {
    			alert('권한 없는 사용자입니다.');
    		}
      }
    	
    	function deleteBtn() {
    		
    		if( ${ position == 'AA' || position == 'BB' || ( position == 'CC' && dep == '인사과')} ){
    			//location.href='memberDelete?member_id=${ member.member_id }';
    			window.opener.name="parent";
    			document.memberUpdatefrm.target = "parent";
    	        document.memberUpdatefrm.method = "post";
    	        document.memberUpdatefrm.action = "memberDelete";
    	        document.memberUpdatefrm.submit();
    			window.close();	
    		}
    		else {
    			alert('권한 없는 사용자입니다.');
    		}
    	}
    
    </script>

</body>
</html>