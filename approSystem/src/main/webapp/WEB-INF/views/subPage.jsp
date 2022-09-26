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
            <button class="tablinks" onclick="openMamual(event, 'Paris')">문서 작성과 결제</button>
            <button class="tablinks" onclick="openMamual(event, 'Tokyo')">직원 리스트 조회</button>
            <button class="tablinks" onclick="openMamual(event, 'test1')">회사공지</button>
            <button class="tablinks" onclick="openMamual(event, 'test2')">커뮤니티</button>
          </div>
          
          <div id="London" class="tabcontent" style="display: none;">
            <h5>직급과 직급에 따른 권한</h5>
            <p>
              London is the capital city of England.
            </p>
          </div>
          
          <div id="Paris" class="tabcontent" style="display: none;">
            <h5>문서 작성과 결제</h5>
            <p>
              Paris is the capital of France.
            </p>
          </div>
          
          <div id="Tokyo" class="tabcontent" style="display: none;">
            <h5>인사관리</h5>
            <p>
              전체 직원의 리스트를 조회할 수 있습니다. <br>
              해당 페이지에서 신규 회원 아이디를 발급 할 수 있으며, 회원 정보의 수정이 가능합니다.
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
              작성자의 익명성이 보장되는 공간으로 자유롭게 의견을 주고받을 수 있습니다. <br>
              글 수정은 글 작성자만 가능하며, 글 삭제는 작성자와 system 아이디로만 삭제하실 수 있습니다.<br>
              이용자 : 모든 직급
            </p>
          </div>

        </div>    
      </div>
    </div>

	<!-- 메인 페이지 - 프로젝트 소개 팝업창  -->
	<div class="container-sm container-fluid col-12 position-absolute d-none flex-column justify-content-center bg-white border border-dark-50 rounded" style="top:50%; left: 50%; transform:translate(-50%, -50%); width:800px;" id="PASIntro">
      <!-- 캔슬 아이콘 -->
      <div class="w-100 d-flex flex-row justify-content-end my-2">
        <i class="bi bi-x-lg" width="30px" height="30px" onclick="popupHideAndShow(target = 'PASIntro');"></i>
      </div>
      <!-- MainDiv -->
      <div class="w-100 d-flex flex-column justify-content-center align-items-center">
        <h4>프로젝트 소개</h4>
        <div class="pl-2 pt-2 pb-4 w-100 text-left">
          <hr>
          <p>
            프로젝트 PAS <small>(ProjectApproSystem)</small>
          </p>
          <p>기간 : 2022.09.20 ~ 2022.10.01 (2주) </p>
          <p>인원 : 1인 (개인 프로젝트) </p>
          <p>소개 :</p>
        </div>     
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
		          <form action="" method="post" onsubmit="return nullChecking()">
		            <div class="form-group row">
		              <div class="col-md-6 mb-3">
		                <label for="member_name">이름</label>
		                <input type="text" class="form-control" id="member_name" required>
		              </div>
		              <div class="col-md-3 mb-3">
		                <label for="">부서</label>
		                <select class="custom-select" id="" required>
		                  <option selected disabled value="">Choose...</option>
		                  <option value="">개발팀</option>
		                </select>
		              </div>
		              <div class="col-md-3 mb-3">
		                <label for="">직급</label>
		                <select class="custom-select" id="" required>
		                  <option selected disabled value="">Choose...</option>
		                  <option value="">책임</option>
		                  <option value="">팀장</option>
		                  <option value="">사수</option>
		                  <option value="">사원</option>
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
		                  <input class="form-check-input nullPointer" type="checkbox" id="joinCK" placeholder="신규 사원 발급에 동의 후 가입이 가능합니다.">
		                  <label class="form-check-label" for="joinCK">
		                    신규 사원 발급에 동의합니다.
		                  </label>
		                </div>
		              </div>
		            </div>
            		<div class="form-group row">
              			<div class="col-sm-10">
                			<button type="submit" class="btn btn-primary">발급</button>
              			</div>
            		</div>
          		</form>
        		</div>     
      		</div>
    	</div>