<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<aside>
	
		<div id="approMain" class="asideNavBar my-4" >
          <input type="button" class="" value="PAS HOME" onclick="location.href='/pas/main'" />
        </div>

        <div id="approWriteBox" class="asideNavBar" >
          <small>문서관리</small>
          <a href="/pas/appro/approWrite" >문서작성</a>
          <a href="/pas/appro/approList" >문서함</a>
          <a href="/pas/appro/approEND" >완료문서</a>
          <hr>
        </div>

        <div id="memberBox" class="asideNavBar">
          <small>사내인사</small>
          <a href="/pas/member/memberList" >직원조회</a>
          <hr>
        </div>

        <div id="community" class="asideNavBar">
          <small>커뮤니티</small>
          <a href="/pas/community/noticeList" >회사공지</a>
          <a href="/pas/community/communityList" >커뮤니티</a>
        </div>
        <button type="button" class="" id="logoutBtn" onclick="location.href='/pas/logoutAciton'"> 로그아웃 </button>    
	</aside>