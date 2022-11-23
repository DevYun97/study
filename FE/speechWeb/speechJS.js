    let recognition = null;
    function checkCompatibilty() { //브라우저 호환여부
      recognition = new(window.SpeechRecognition || window.webkitSpeechRecognition)();
      recognition.lang = "ko"; //한글은 인식을 잘 못해서 언어를 영어라고 선언.
      recognition.maxAlternations = 5; // 발음한 단어와 최대한 비슷한 단어를 5개까지 반환함. 가장 유사한 단어를 첫번째 배열에 넣어줌.

      if(!recognition) {
        alert("You can not use speech api.");
      }
    }

    function startSpeechRecognition() {

      console.log('start');

      recognition.addEventListener("speechstart", ()=>{ //스피치가 시작 되었을 때
        console.log('speech start');
      });

      recognition.addEventListener("speechend", ()=>{ //스피치가 종료되었을 때
        console.log('speech end');
      });

      recognition.addEventListener("result", (event)=>{ // 우리가 찍는 이벤트가 나옴 우리가 말한 메세지를 받아오는 이벤트
        //console.log("speech Result", event.results);
        const text = event.results[0][0].transcript;
        document.getElementById("speech_result").value = text;
        document.getElementById("speech_result").focus();
        //document.getElementById("speech_result").classList.add(String(text));
      });

      recognition.start();
    }

    function stopSpeechRecognition(){
      recognition.stop();
    }

    window.addEventListener('load', checkCompatibilty);