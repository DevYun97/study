//팝업창 숨기기&보이기 기능
function popupHideAndShow(target) {
  const targetWindow = document.getElementById(String(target)); // id가 String(문자열) 'target' 호출
    // Element.classList : 엘리먼트의 클래스 속성의 컬렉션인 활성 DOMTokenList를 반환하는 읽기 전용 프로퍼티.
    // classList 사용은 공백으로 구분된 문자열인 element.className 을 통해 엘리먼트의 클래스 목록에 접근하는 방식을 대체하는 간편한 방법.
    // Element.classList 자체는 읽기 전용 프로퍼티지만 add() remove() 메서드를 이용하여 변형 가능
  if(targetWindow.classList.contains("d-none")){ // .contains : 지정한 클래스 값이 엘리먼트의 class속성에 존재하는지 확인    
      targetWindow.classList.add("d-block"); //지정한 클래스 값을 추가
      targetWindow.classList.remove("d-none"); //지정한 클래스 값 제거
  }else if(targetWindow.classList.contains("d-block")){
      targetWindow.classList.add("d-none");
      targetWindow.classList.remove("d-block");
  }
};

// 메인 페이지 매뉴얼 JS
function openMamual(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");

  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
};

// class를 이용한 nullPoint Check
function nullChecking() {
  const nullCK = document.getElementsByClassName('nullPointer');
  for(var i=0; nullCK.length; i++) {    
    if( nullCK[i].value == '' ){
      alert(nullCK[i].placeholder);
      return false;
    } else if (nullCK[i].type == 'checkbox' && nullCK[i].checked == false) {
      alert(nullCK[i].placeholder);
      return false;
    }
  }
  return true;
};

// 비밀번호 정규화 넣기
function pwChange() {
  //alert('c');
  const pwChack = /^[a-zA-Z0-9]*$/;
  const pw = document.getElementById('member_pw');
  if( !pwChack.test(pw.value) ) {
      alert("비밀번호는 영어와 숫자로만 입력 가능합니다.");
      pw.value = null;
      pw.focus();
      return false;
  }
}

// 이미지 파일만
function fileCheck(){
  var ext = $("#file_name").val().split(".").pop().toLowerCase();
  
  if($.inArray(ext,["gif","jpg","jpeg","png","bmp"]) == -1) {
      alert("이미지만 등록 가능합니다.");
      $("#file_name").val("");
      return;
  }
}