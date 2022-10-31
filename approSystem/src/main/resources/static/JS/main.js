
 //팝업창 숨기기&보이기 기능
function popupHideAndShow(target) {
	
  const targetWindow = document.getElementById(String(target));

  if(targetWindow.classList.contains("d-none")){  
      targetWindow.classList.add("d-block"); 
      targetWindow.classList.remove("d-none");
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

 function goPage(num){
		$("#pageNo").val(num);
		$("#schBtn").click();
	}
	
 function comWriteBtn(){
    $("#communityFrm").attr("action", "communityWriteAction").attr("method","post").submit(); 		
 }
 
 function comUpdateBtn(){
    $("#communityFrm").attr("action", "communityUpdateAction").attr("method","post").submit(); 		
 }
 