function speechEventList(){
      
  let text = document.getElementById("speech_result");

  // 추가할 장난들 : 지금 몇시야? : 현재 시간 알려줌
  // 바보, 멍청이, 똥개 : 사이트 반응
  // 오늘 뭐 먹지? 매뉴 추천 : 랜덤 음식 추천
  
  if(text.value == "메인 화면" || text.value == "홈 화면" ){
    location.href='../main.html';
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

  if(text.value == "오늘 뭐 먹지" || text.value == "메뉴 추천") {
    const randomNum = Math.floor(Math.random()*(6 - 1)+1);
    console.log(randomNum)
    let foodResult = "";
    
    let foodIcon = "";
    switch(randomNum){
      case 1:
        foodIcon = "🍜"
        foodResult = "라면.. 먹고갈래?";
        break;
      case 2:
        foodIcon = "🍔 🍟 🥤";
        foodResult = "참깨빵 위에 순쇠고기 패티 두 장 특별한 소스 양상추 치즈 피클 양파까지~";
        break;
      case 3:
        foodIcon = "🍛"
        foodResult = "아 ~ 카레라이스 ~  ";
        break;
      case 4:
        foodIcon = "🎉"
        foodResult = "🍗 오늘 매뉴는 치킨이닭 🍗";
        break;
      case 5:
        foodIcon = "🥕🥕 ㄴㄴ🐰ㄱㄱ 🥕🥕"
        foodResult = "바니~ 바니~ 바니~ 바니~ 당근! 당근!";
        break;
    }

    document.getElementById('consoleBox').style.display = 'block';
    document.getElementById("consoleBox").innerHTML = '<div style="font-size:35px; margin:10px 0;">'+foodIcon+'</div>' + foodResult;
    setTimeout( consoleOut, 5000);
  }

  // 가위 바위 보
  let resultArr = [];

  if(text.value == "가위바위보 할래" || text.value == "가위바위보"){
    document.getElementById('gameBackground').style.display = 'flex';
    document.getElementById('miniGameBox').style.display = 'block';   
    document.getElementById('gameResultBox').style.display = 'none';
  }

  if(text.value == "가위" || text.value == "바위" || text.value == "보"){

    let randoms = Math.floor(Math.random()*( 2 - 0 )+0);   
    let coms = null;
    let useIcons = null;
    switch(randoms){
      case 0: //주먹
        if(text.value == "가위"){
          useIcons = '🫰';
          resultArr.unshift('<');
        }else if(text.value == "바위") {
          useIcons = '✊';
          resultArr.unshift('=');
        } else {
          useIcons = '🖐️';
          resultArr.unshift('>');
        }
        coms ='✊';
      break;
      case 1: //가위
        if(text.value == "가위"){
          useIcons = '🫰';
          resultArr.unshift('=');   
        }else if(text.value == "바위") {
          useIcons = '✊';
          resultArr.unshift('>');
        } else {
          useIcons = '🖐️';
          resultArr.unshift('<');    
        }
        coms = '🫰';
      break;
      case 2: //보
        if(text.value == "가위"){
          useIcons = '🫰';
          resultArr.unshift('>');
        }else if(text.value == "바위") {
          useIcons = '✊';
          resultArr.unshift('<');          
        } else {
          useIcons = '🖐️';
          resultArr.unshift('=');
        }
        coms = '🖐️';
      break;
    }

    document.getElementById('gameResultBox').style.display = 'flex';

    document.getElementById('userGameIcon').innerHTML = useIcons;
    document.getElementById('gameResultSign').innerHTML = resultArr[0];
    document.getElementById('comsGameIcon').innerHTML = coms;

  }

  if(text.value == '게임 종료'){ //미 테스트
    document.getElementById('gameBackground').style.display = 'none';
    document.getElementById('miniGameBox').style.display = 'none';
  }

  
  //지금 몇 시야?
  if(text.value == "지금 몇 시야" || text.value == "시간") {
    let whatTime = new Date(); //현재 날짜 및 시간
    let hours = whatTime.getHours();
    let minutes = whatTime.getMinutes();
    let seconds = whatTime.getSeconds();

    document.getElementById('consoleBox').style.display = 'block';
    let timeIcon = '<i class="bi bi-alarm" class="testA"></i>';
    document.getElementById("consoleBox").innerHTML = timeIcon+ hours +"시 "+ minutes +"분 "+ seconds+"초";
    setTimeout( consoleOut, 5000);
  }

  if(text.value == "멍청한 개발자"){ //
    document.getElementById('consoleBox').style.display = 'block';
    document.getElementById("consoleBox").innerText = '😢';
    setTimeout( consoleOut, 5000);
  }
 
  document.getElementById("textArea").innerText = text.value;
  setTimeout( textRemove, 5000);

  //필수 end 명령어
  document.getElementById("speech_result").blur(); //무한 이벤트 늪에서 구헤줌. ㅠㅠ false도 return도 안먹힌다
}

function consoleOut(){
  document.getElementById('consoleBox').style.display = 'none';
}

function textRemove(){
  document.getElementById("textArea").innerText = '';
}