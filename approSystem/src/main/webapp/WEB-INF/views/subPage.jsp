<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- 메인 페이지 - 사용자 설명서 -->
	<div class="container-sm container-fluid position-absolute d-none flex-column justify-content-center bg-white border border-dark-50 rounded px-0 " style="top:50%; left: 50%; transform:translate(-50%, -50%); width:800px;" id="aaaa">
      <!-- 캔슬 아이콘 -->
      <div class="w-100 d-flex flex-row justify-content-end my-2 pr-2">
        <i class="bi bi-x-lg" width="30px" height="30px" onclick="popupHideAndShow(target = 'aaaa');"></i>
      </div>
      <!-- MainDiv -->
      <div class="w-100 d-flex flex-column justify-content-center align-items-center">
        <h4 class="">사용자 매뉴얼</h4>
        <!--  -->
        <div class="w-100">
          <div class="tab">
            <button class="tablinks" onclick="openMamual(event, 'London')">직급과 직급에 따른 권한</button>
            <button class="tablinks" onclick="openMamual(event, 'Paris')">문서 작성과 결재</button>
            <button class="tablinks" onclick="openMamual(event, 'Tokyo')">직원 리스트 조회</button>
            <button class="tablinks" onclick="openMamual(event, 'test1')">회사공지</button>
            <button class="tablinks" onclick="openMamual(event, 'test2')">커뮤니티</button>
          </div>
          
          <div id="London" class="tabcontent" style="display: none;">
            <h5>직급과 테스트 아이디</h5>
            <p>            
              테스트용 아이디 <br>
              system : 1111 (부장) <br>
              ID : pas_memNum_1 | pw: 1111 (부장) <br>
              ID : pas_memNum_2 | pw: 1111 (차장) <br>
              ID : pas_memNum_3 | pw: 1111 (과장) <br>
              ID : pas_memNum_4 | pw: 1111 (대리) <br>
              ID : pas_memNum_5 | pw: 1111 (사원)
            </p>
          </div>
          
          <div id="Paris" class="tabcontent" style="display: none;">
            <h5>문서 작성과 결재</h5>
            <p>
              보고서 작성 및 결재 기능입니다. <br>
              작성 된 보고서는 임시저장, 상급자에게 서류를 넘길 수 있으며 결재자는 해당 문서를 반려, 결재할 수 있습니다. <br>
              반려 된 문서는 수정이 가능하며 수정 된 문서는 사원 및 대리급은 즉시 과장급에게 결재를, 과장급 이상의 직급은 상위 직급의 결재를 받게 됩니다. <br>
              과장급 이상부터 상급자에게 결재 넘기기, 최종 결재를 결정할 수 있습니다. <br>
              최종 결재 된 문서들은 완료 문서 페이지에서 조회하실 수 있습니다.
            </p>
          </div>
          
          <div id="Tokyo" class="tabcontent" style="display: none;">
            <h5>인사관리</h5>
            <p>
              전체 사원의 리스트와 사원의 상세 정보를 조회할 수 있는 페이지입니다. <br>
              부장, 차장 및 인사팀 과장급의 아이디로 접근 시 신규 사원 카드 발급, 부서와 직급 수정 및 삭제가 가능합니다. <br>
              신규 아이디 발급 시 아이디와 비밀번호는 자동으로 발급되며 초기 비밀번호는 '1111' 입니다. <br>
              비밀번호는 로그인 후 메인 페이지에서 변경하실 수 있습니다.
            </p>
          </div>

          <div id="test1" class="tabcontent" style="display: none;">
            <h5>회사공지</h5>
            <p>
              사내 공지사항 페이지입니다. <br>
              공지사항 작성은 일부 권한 있는 직급이 작성하실 수 있습니다.<br>
              권한 : 사장 / 책임 / 팀장
            </p>
          </div>

          <div id="test2" class="tabcontent" style="display: none;">
            <h5>커뮤니티</h5>
            <p>
              사내 커뮤니티 공간입니다. <br>
              모든 사용자가 이용할 수 있으며, 작성자의 익명성이 보장되는 공간입니다. <br>
              작성된 글의 수정 및 삭제는 글 작성자 및 system 아이디로만 가능하며, <br> 
              작성자의 댓글 작성 시 '작성자'라고 표시됩니다.
            </p>
          </div>

        </div>    
      </div>
    </div>
    
    <!-- 비밀번호 변경 팝업창 -->
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
	          	<input type="submit" id="pwSubmitBtn" class="col-6 mt-3 mb-5" value="확인" disabled />
        	</form>
      </div>
	</div>

	<!-- 신규 회원 등록 카드 -->
	<div class="container-sm container-fluid col-12 position-absolute d-none flex-column justify-content-center bg-white border border-dark-50 rounded" style="top:50%; left: 50%; transform:translate(-50%, -50%); width:580px;" id="memberAdd">
	<!-- 캔슬 아이콘 -->
		<div class="w-100 d-flex flex-row justify-content-end my-2">
		   	<i class="bi bi-x-lg" width="30px" height="30px" onclick="popupHideAndShow(target = 'memberAdd');"></i>
		</div>
		<!-- MainDiv -->
		<div class="w-100 d-flex flex-column justify-content-center align-items-center">
		    <h4>신규 회원 등록카드</h4>
		    <div class="pl-2 pt-2 pb-4 w-100 text-left">
		    	<form action="memberJoinAction" method="post" onsubmit="return memberJoin()">
		        	<div class="form-group row">
		            	<div class="col-md-6 mb-3">
		                	<label for="member_name">이름</label>
		                	<input type="text" class="form-control nullPointer" name="member_name" id="member_name" required>
		              	</div>
		              	<div class="col-md-3 mb-3">
		                	<label for="">부서</label>
		                	<select class="custom-select" name="member_dep" id="member_dep" required>
		                  		<option selected disabled >부서</option>
		                  		<option value="개발팀">개발팀</option>
		                  		<option value="회계팀">회계팀</option>
		                  		<option value="인사팀">인사팀</option>
		                	</select>
		              	</div>
		              	<div class="col-md-3 mb-3">
		                	<label for="">직급</label>
		                	<select class="custom-select" name="member_position" id="member_position" required>
		                  		<option selected disabled>직급</option>
			                  	<option value="AA">부장</option>
			                  	<option value="BB">차장</option>
			                  	<option value="CC">과장</option>
			                  	<option value="DD">대리</option>
			                  	<option value="EE">사원</option>
		                	</select>                
		              	</div>
		            </div>
		            <fieldset class="form-group row">
		            	<legend class="col-form-label col-sm-2 float-sm-left pt-0">성별</legend>
		              	<div class="col-sm-10">
		                	<div class="form-check">
		                  		<input class="form-check-input" type="radio" name="member_gender" id="male" value="male" checked>
		                  		<label class="form-check-label" for="male">
		                    	남자
		                  		</label>
		                	</div>
		                	<div class="form-check">
		                  		<input class="form-check-input" type="radio" name="member_gender" id="female" value="female">
			                  	<label class="form-check-label" for="female">
			                    	여자
			                  	</label>
		                	</div>
		              	</div>
		            </fieldset>
		            <div class="form-group row">
		            	<div class="col-sm-10 offset-sm-2">
		                	<div class="form-check">
		                  		<input class="form-check-input" type="checkbox" id="joinCK" placeholder="신규 사원 발급에 동의 후 가입이 가능합니다." required>
		                 		<label class="form-check-label" for="joinCK">
		                    	신규 사원 발급에 동의합니다.
		                  		</label>
		                	</div>
		              	</div>
		            </div>
            		<div class="form-group row">
              			<div class="col-sm-10">
              				<input type="submit" value="발급" />
              			</div>
            		</div>
          		</form>
          		
          		<input type="hidden" id="dep" value="${ dep }" />          		
          		<input type="hidden" id="position" value="${ position }" />
          		
        	</div>     
      	</div>
    </div>
    