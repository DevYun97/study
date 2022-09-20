<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(function(){
		$("#statusType").change(function(){
		$.ajax({		
			url:"listAjax",  // action
			type:"post",  	 // method 
			data : $("#statusType").serialize( ),  // controller 로 보내고 싶은 값  json 이라는 방식과 serialize( ) 방식
 
			success: function(date){								
				$("#listFrm").html(date);  // 호출받아서 실행되는 부분. 			
			},		
			error:function(){
				alert("error");
			}
 
		})
	})
})
 
</script> 
</head>
<body>
	<h1>LIST PAGE</h1>
	<div>
		<!--<span>${ userInfo.memName } ( ${userInfo.memRank} ) 님 환영합니다.</span> -->
		<span>${ memName } ( ${memRank} ) 님 환영합니다.</span>
		<span><input type="button" value="로그아웃" onclick="location.href='logout'"/></span>
	</div>
	<div>
		<input type="button" value="글쓰기" onclick="location.href='write'" />
		<c:if test="${ memRank == '과장' || memRank == '부장' }" >
		<input type="button" value="대리결재" onclick="location.href='#'" />
		</c:if>
	</div>
	
	<!-- 검색박스  : 우선 get으로 테스트하고 post 로 변경하기 -->
	<form id="schFrm" name="schFrm" action="list" method="get">
		<div>
			<select id="schType" name="schType">
				<option value="sel" >선택</option>
				<option value="memName">작성자</option>
				<option value="lTitle">결재자</option>
				<option value="lContent">제목+내용</option>
			</select>
			
			<input type="text" id="schTxt" name="schTxt" />
			
			<select name="statusType" id="statusType" >
				<option value="" >결재상태</option>
				<option value="aa" >임시저장</option>
				<option value="bb">결재대기</option>
				<option value="cc">결재중</option>
				<option value="dd">결재완료</option>
				<option value="ff">반려</option>
			</select>
		</div>
		<div>
			<input type="date" id="startDate" name="startDate" >
			~
			<input type="date" id="endDate" name="endDate" >
			
			<input type="submit" value="검색" />
		</div>
	</form>
	
	<br>
	<div id="listFrm" name="listFrm">
		<table border = "1">
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>작성일</th>
				<th>결재일</th>
				<th>결재자</th>
				<th>결재상태</th>
			</tr>
			<c:forEach items="${ list }" var="list" varStatus="i">
			<tr>
				<td onclick="location.href='appro?lIdx=${ list.lIdx }'">${ list.lIdx }</td>
				<td>${ list.memName }</td>
				<td>${ list.lTitle }</td>
				<td>${ list.lDate }</td>
				<td>${ list.aDate }</td>
				<td>${ list.aName }</td>
				<td>${ list.lStatus }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
</body>
</html>
