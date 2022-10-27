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