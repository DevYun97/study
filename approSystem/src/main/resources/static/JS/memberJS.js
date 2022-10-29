
 //비밀번호 일치 ajax
 $(function(){
	$('#checkPw').focusout(function(){	        
		//비밀번호 확인
	        const member_pw = $('#checkPw').val();
	        
	        if(!member_pw){
	        	alert("비밀번호를 입력해주세요.");
	            return false;
	        }
	        $.ajax({	        	
	            url: 'http://localhost:8081/member/pwChkAjax?member_pw='+ member_pw,	// action	            
	            type: 'POST', //method     
	            success: function(data) {   //success : function( 변수명 ) -- return "data"; 호출받아서 실행되는 부분.  function: 액션이 선행되어어야 함.
	            	let data_num = Number( data );
	               	if( data_num >= 1 ){
						if( pwNone ) {
							alert('기존비밀번호를 재확인 해 주세요');
	          				$('#checkPw').val('');
						}	          			
	          		  }else{
	                   		$('#pw1').removeAttr('disabled');
	                   		$('#pw2').removeAttr('disabled');
	          		  }
	          		},
	            error: function(){
	            	console.log('통신 실패');
	            }	
	   		});
	    })
    });
    
 // 비밀번호 수정 스크립트
 $("#pwChangeFrm").keyup(function(){ 
		
	const pw1 = $('#pw1').val();
	const pw2 = $('#pw2').val();
	      
	if( !pw1 || !pw2){      //null 체크
	    $('#pwCkOk').css('display','none');   
	    $('#pwCkNo').css('display','none');
	}
	else if( pw1 != pw2 ) { //비밀번호 수정이 일치하지 않을 경우
	   	$('#pwCkNo').css('display','block');
	    $('#pwCkOk').css('display','none');   		
	}
	else if(pw1 == pw2){  //비밀번호 수정이 일치
	    $('#pwCkNo').css('display','none');
	    $('#pwCkOk').css('display','block');
	    $('#pwSubmitBtn').removeAttr('disabled'); //submit 버튼 잠금해제
	}
 });    
 
 function pwChangeOk(){
	
	const pw1 = $('#pw1').val();
	const pw2 = $('#pw2').val();
	
	if(pw1 == pw2){
		return true;
	} else {
		return false;
	}
 }

 //회원가입 JS
 function memberJoin() {   
	  
    if( $("#position").val() == '부장' || $("#position").val() == '차장') {      
        return true;
    } 
    else if($("#dep").val() == '인사팀'){
		if($("#position").val() == '대리' || $("#position").val() == '사원' ) {
			return false;
		} else {
			return true;
		}	
	}
    else {
        alert('권한 없는 사용자입니다.');
    	return false;
	}   	
 }
         
 function updateBtn() { 
	if( $("#position").val() == '부장' || $("#position").val() == '차장') {      
    	alert('사원정보를 수정합니다.');
		window.opener.name="parent";
    	document.memberUpdatefrm.target = "parent";
    	document.memberUpdatefrm.method = "post";
    	document.memberUpdatefrm.action = "memberUpdate";
    	document.memberUpdatefrm.submit();
    	window.close();
    	}
     else if($("#dep").val() == '인사팀'){		
		
		if($("#position").val() == '대리' || $("#position").val() == '사원' ) {
			alert('권한 없는 사용자입니다.');
		} 
		else {
			alert('사원정보를 수정합니다.');
			window.opener.name="parent";
    		document.memberUpdatefrm.target = "parent";
    		document.memberUpdatefrm.method = "post";
    		document.memberUpdatefrm.action = "memberUpdate";
    		document.memberUpdatefrm.submit();
    		window.close();
		}	
	}
    else {
		alert('권한 없는 사용자입니다.');
	}
 }
 
 
  function deleteBtn() { 
	
	if( $("#position").val() == '부장' || $("#position").val() == '차장') {      
    	alert('사원정보를 삭제합니다. 삭제한 정보는 복구할 수 없습니다.');
		window.opener.name="parent";
    	document.memberUpdatefrm.target = "parent";
    	document.memberUpdatefrm.method = "post";
    	document.memberUpdatefrm.action = "memberDelete";
    	document.memberUpdatefrm.submit();
    	window.close();
    	}
    else if($("#dep").val() == '인사팀'){		
		if($("#position").val() == '대리' || $("#position").val() == '사원' ) {
			alert('권한 없는 사용자입니다.');
		} else {
			alert('사원정보를 삭제합니다. 삭제한 정보는 복구할 수 없습니다.');
			window.opener.name="parent";
    		document.memberUpdatefrm.target = "parent";
    		document.memberUpdatefrm.method = "post";
    		document.memberUpdatefrm.action = "memberDelete";
    		document.memberUpdatefrm.submit();
    		window.close();
		}	
	}
    else {
		alert('권한 없는 사용자입니다.');
	}
 }