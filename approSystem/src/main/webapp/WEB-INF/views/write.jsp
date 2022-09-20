<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	
	function writeBtnA() {
 
		//var title = $("#title");
		var title = $("#title").val();
		var content = $("#content").val();
		var statusValue = $("#lStatus");
		
		if( !title ) {
			alert("제목을  입력해주세요.");			
			}
		else if( !content ) {
			alert("내용을 입력해주세요.");
			}
		else {		
			if(statusValue.val() == 'a' || statusValue.val() == 'f') {
				alert("수정완료");
				$("#lStatus").val('a').toString;
				$("#writeFrm").attr({"action":"writeUpdate", "method":"get"}).submit();
				} 
			else if(statusValue.val() == '') {
				alert("글 등록");
				$("#lStatus").val('a').toString;
				$("#writeFrm").attr({"action":"writeAction", "method":"get"}).submit();
			} else {
					alert("임시작성 상태에서만 글 수정이 가능합니다.");				
				}
			}			
	}
	
	function writeBtnB() {
		
		var statusValue = $("#lStatus");
 
		console.log( statusValue.val() );
 
		if( statusValue.val() == '' ){
			alert("결제대기");
			statusValue.val('b').toString;
			$("#writeFrm").attr({"action":"writeAction", "method":"get"}).submit();
		} 
		else if ( statusValue.val() == 'a' ) {
			alert("결제대기");
			statusValue.val('b').toString;
			$("#writeFrm").attr({"action":"writeUpdate", "method":"get"}).submit();
		}		
		else if ( statusValue.val() == 'b' && (${ memRank == '과장' || memRank == '부장' }) ) {
			alert("결제중 완료");
			statusValue.val('c').toString;
			$("#writeFrm").attr({"action":"historyAction", "method":"get"}).submit();
		} 
		else if ( statusValue.val() == 'c' && ${ memRank == '부장' }) {
			alert("결제완료");
			statusValue.val('d').toString;
			$("#writeFrm").attr({"action":"historyAction", "method":"get"}).submit();
		}
		else {
			alert(statusValue.val());
			}						
	}
 
	function btnF() {
		var statusValue = $("#lStatus");
		statusValue.val('f').toString;
		$("#writeFrm").attr({"action":"historyAction", "method":"get"}).submit();
	}
	
</script>
</head>
<body>
	<h1>글작성 페이지 / 결제 페이지</h1>
	
	<!-- 체크박스  -->
	<table border="1">
		<tr>
			<th>결재요청</th>
			<th>과장</th>
			<th>부장</th>
		</tr>
		<tr>
			<td>
				<%-- <c:if test="${ not empty memName && not empty writeRoute }" >
					<input type="checkbox" checked disabled />
				</c:if> --%>
				<c:if test="${ appro.lStatus != 'a' && empty writeRoute }" >
					<input type="checkbox" checked disabled />
				</c:if>
				<c:if test="${ appro.lStatus == 'a' || not empty writeRoute }" >
					<input type="checkbox" disabled />
				</c:if>				
			</td>
			<td>
				<c:if test="${ appro.lStatus == '부장' && not empty approRoute }" >
					<input type="checkbox" checked disabled />
				</c:if>
				<c:if test="${ appro.lStatus != '부장' || empty approRoute }" >
					<input type="checkbox" disabled />
				</c:if>				
			</td>
			<td>
				<c:if test="${ memRank == '부장' && not empty approRoute }" >
					<input type="checkbox" checked disabled />
				</c:if>
				<c:if test="${ memRank != '부장' || empty approRoute }" >
					<input type="checkbox" disabled />
				</c:if>
			</td>
		</tr>
	</table>
	
	<form id="writeFrm" name="writeFrm">
		<div>
			<input type="hidden" name="lIdx" value="${ appro.lIdx }">
			<span>번호 : </span> <input type="text" id="idx" value="${ appro.lIdx }" disabled /> <br>
			<c:if test="${ empty approRoute }" >
				<span>작성자 :</span> <input type="text" id="name" value="${ memName }" disabled /> <br>
			</c:if>
			<c:if test="${ not empty approRoute }" >	
				<span>작성자 :</span> <input type="text" id="name" value="${ appro.memName }" disabled /> <br>
			</c:if>
			<span>제목 :</span> <input type="text" id="title" name="list_title" value="${ appro.lTitle }" /> <br>
			<span>내용 :</span> <br>
			<textarea rows="3" cols="30" id="content" name="list_content">${appro.lContent}</textarea>
			<input type="hidden" id="lStatus" name="list_status" value="${appro.lStatus}" />
			<div>
				<c:if test="${ memRank == '과장' || memRank == '부장' }" >
					<input type="button" value="반려" onclick="btnF()" />
				</c:if>
					<input type="button" value="임시저장"  onclick="writeBtnA()" />			
					<input type="button" value="결제"  	onclick="writeBtnB()" />			
			</div>
		</div>	
	</form>
	<br>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>결재일</th>
			<th>결재자</th>
			<th>결재상태</th>
		</tr>
		<c:forEach items="${ his }" var="his" varStatus="i">
		<tr>
			<td>${ his.hIds }</td>
			<td>${ his.approDate }</td>
			<td>${ his.approName }</td>
			<td>${ his.hListStatus }</td>
		</tr>
		</c:forEach>
	</table>	
</body>
</html>
