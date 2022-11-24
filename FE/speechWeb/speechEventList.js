function speechEventList(){
      
  let text = document.getElementById("speech_result");

  // 추가할 장난들 : 지금 몇시야? : 현재 시간 알려줌
  // 바보, 멍청이, 똥개 : 사이트 반응
  // 오늘 뭐 먹지? 매뉴 추천 : 랜덤 음식 추천
  
  
  if(text.value == ""){ //

  }
  if(text.value == ""){ //

  }

  if(text.value == "불 켜줘" || text.value == ""){ // 테스트 안함 불 애니메이션 불러오기?
    alert("dark");

  }
  if(text.value == "불 꺼줘" || text.value == ""){ // 테스트 안함 불 끄는 애니메이션? 같은??
    alert("dark");
  }
  if(text.value == "메인 화면" || text.value == "홈 화면" ){
    location.href='../main.html';
  }
  if(text.value == "마법상점" || text.value == "상점" ){
    location.href='../shop.html';
  }

  // 설명서 명령어
  if( text.value == "설명서" ){ // 설명서를 불러오는 명령어
    document.getElementById("menuModal").style.display = 'block';
  }
  
  if( text.value == "닫기" ){ // 화면에 열려있는 모달창 닫기 공용 명령어
    
    let modals = document.getElementsByClassName('modal');  
    for(let i = 0; i < modals.length; i++){
      if( modals[i].style.display == 'block' ){
        modals[i].style.display = 'none';
      }
    }
  } 
  
  //지금 몇 시야?
  if(text.value == "지금 몇 시야" || text.value == "시간") {
    let whatTime = new Date(); //현재 날짜 및 시간
    let hours = whatTime.getHours();
    let minutes = whatTime.getMinutes();
    let seconds = whatTime.getSeconds();

    document.getElementById('consoleBox').style.display = 'block';
    document.getElementById("consoleBox").innerText = hours +"시 "+ minutes +"분 "+ seconds+"초";
    setTimeout( consoleOut, 5000);
  }

  if(text.value == "멍청한 개발자"){ //
    document.getElementById('consoleBox').style.display = 'block';
    document.getElementById("consoleBox").innerText = '😢';
    setTimeout( consoleOut, 5000);
  }
 
  document.getElementById("textArea").innerText = text.value;

  //필수 end 명령어
  document.getElementById("speech_result").blur(); //무한 이벤트 늪에서 구헤줌. ㅠㅠ false도 return도 안먹힌다

}

function consoleOut(){
  document.getElementById('consoleBox').style.display = 'none';
}