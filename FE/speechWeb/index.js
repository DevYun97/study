
function modalOn(){
  document.getElementById("modal").style.display = 'block';
}

function modalItem01(){
  document.getElementById("modal_item01").style.display = 'block';
  document.getElementById("modal_item02").style.display = 'none';
}

function modalItem02(){
  document.getElementById("modal_item01").style.display = 'none';
  document.getElementById("modal_item02").style.display = 'block';
}

function lightMode(){
  
}

function speekOnBtn() { // 마이크 사용 허용
  let speekYN = document.getElementsByClassName('speekYN');  
  for(let i = 0; i < speekYN.length; i++){
    speekYN[i].classList.remove(String('noSpeeking'));
  }
}

function speekOffBtn() { // 마이크 사용 안함
  let speekYN = document.getElementsByClassName('speekYN');  
  for(let i = 0; i < speekYN.length; i++){
     speekYN[i].classList.add(String('noSpeeking'));
  }
}


