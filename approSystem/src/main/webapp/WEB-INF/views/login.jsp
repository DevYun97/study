<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login 페이지</title>
<script>
	
	function nullChk(){
		
		var id = $("#memId").val();
		var pw = $("#memPw").val()
		
		if( !id) {
			alert("아이디를 입력해주세요.");
			return false;
			}
		else if( !pw ) {
			alert("비밀번호를 입력해주세요.");
			return false;
			}
		return true;
		}
 
 
	var loginChk = '${loginMsg}'; /* controller 에서 어트리뷰트 한 거 꼭 싱글쿼터? ''해야 값을 받을 수 있음.  */
	if(loginChk != null){
		if(loginChk == 'idFail') {
			alert("아이디를 확인하세요");
			//$("#memId").focus();
			}
		if(loginChk == 'pwFail') {
			alert("비밀번호를 확인하세요");
			//$("#memPw").focus();
			}
		}
	
</script>
</head>
<body>
 
	<c:if test="${ empty memName }" >
	로그인하지 않은 상태입니다.
	</c:if>
	<c:if test="${ not empty memName }" >
	${ memName }
	</c:if>
 
	<h1>로그인 화면</h1>
	<form action="loginAction" method="post" onsubmit="return nullChk();" >
		아이디 : <input type="text" id="memId" name="memId" /> <br>
		비밀번호 : <input type="password" id="memPw" name="memPw" /> <br>
		<input type="submit" value="로그인" />
	</form>
</body>
</html>
