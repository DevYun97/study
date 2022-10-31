	
	function writeBtnA() {
 
		const title = $("#report_title").val();
		const statusValue = $("#report_status");
		
		if( !title ) {
			alert("제목을 입력해주세요.");			
			}
		else {		
			if(statusValue.val() == 'TS' || statusValue.val() == 'RT') {
				
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
				} 
			else if(statusValue.val() == '') {
				alert("글 등록");
				$("#report_status").val('TS').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else {
				alert("임시작성 상태에서만 글 수정이 가능합니다.");				
			}
		}			
	}
	
	function writeBtnB() {
    	 
		const title = $("#report_title").val();
		const statusValue = $("#report_status");
		const position = $("#member_position").val();
		
		if( !title ) {
			alert("제목을  입력해주세요.");			
			}
		else {		
			if( statusValue.val() == 'TS' && position == '사원' ) {
				alert("결재대기 등록");
				$("#report_status").val('DR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'TS' && position == '대리' ){
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'TS' && position == '과장' ){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'TS' && position == '차장' ){
				alert("결재대기 등록");
				$("#report_status").val('AR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if(statusValue.val() == '' && position == '사원' ) {
				alert("결재대기 등록");
				$("#report_status").val('DR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == '대리' ){
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == '과장' ){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == '차장' ){
				alert("결재대기 등록");
				$("#report_status").val('AR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else {
				alert("임시작성 상태에서만 글 수정이 가능합니다.");				
			}
		}			
	}
	
	function writeRT() { //반려문서 임시저장
		
		const title = $("#report_title").val();
		const statusValue = $("#report_status");
		
		if( !title ) {
			alert("제목을  입력해주세요.");			
			}
		else {		
			if( statusValue.val() == 'RT') {
				alert("반려문서 수정완료");
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
				} 
			else if(statusValue.val() == '') {
				alert("글 등록");
				$("#report_status").val('RT').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else {
				alert("임시작성 상태에서만 글 수정이 가능합니다.");				
			}
		}				
	}
	
	function approRT() {
		
		const title = $("#report_title").val();
		const statusValue = $("#report_status");
		const position = $("#member_position").val();
		
		if( !title ) {
			alert("제목을 입력해주세요.");			
			}
		else {		
			if( statusValue.val() == 'RT' && (position == '사원' || position == '대리') ) {
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'RT' && position == '과장' ){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'RT' && position == '차장' ){
				alert("결재대기 등록");
				$("#report_status").val('AR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && (position == '사원' || position == '대리') ) {
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == '과장' ){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == '차장' ){
				alert("결재대기 등록");
				$("#report_status").val('AR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else {
				alert("임시작성 상태에서만 글 수정이 가능합니다.");				
			}
		}				
	}
	
	
	
	// approPop
	function approBtn(){
    	  const reValue = $("#report_status");
    	  const apValue = $("#appro_status");
    	  if( reValue.val() == 'DR' && $("#position").val() == '대리' ){
    		  alert('결재가 완료되었습니다.');
    		  reValue.val('CR').toString;
    		  apValue.val('CR').toString;
    		} 
    	  else if ( reValue.val() == 'CR' && $("#position").val() == '과장' ){
    		  alert('결재가 완료되었습니다.');
    		  reValue.val('BR').toString;
    		  apValue.val('BR').toString;
    		} 
    	  else if ( reValue.val() == 'BR' && $("#position").val() == '차장' ){
    		  alert('결재가 완료되었습니다.');
    		  reValue.val('AR').toString;
    		  apValue.val('AR').toString;
    		}
    	  else if ( reValue.val() == 'AR' && $("#position").val() == '부장' ){
    		  alert('결재가 완료되었습니다.');
    		  reValue.val('END').toString;
    		  apValue.val('END').toString;
    	  	}
    	  else {
    		  alert('결재를 할 수 없습니다.');
    		  window.close();
    		  return false;   		  
    	  }
    	  window.opener.name="parent";
    	  document.approFrm.target = "parent";
    	  document.approFrm.method = "post";
    	  document.approFrm.action = "approAction";
    	  document.approFrm.submit();
    	  window.close();
      }
     
      function returnBtn() {
    	  const reValue = $("#report_status");
    	  const apValue = $("#appro_status");
    	  if( reValue.val() == 'END' ) {
    		  alert('반려 할 수 없는 문서입니다.');
    		  window.close();
    		} 
    	  else {
    		  alert('문서 반려');
    		  reValue.val('RT').toString;
    		  apValue.val('RT').toString;
    	  	}
    	  window.opener.name="parent";
    	  document.approFrm.target = "parent";
    	  document.approFrm.method = "post";
    	  document.approFrm.action = "approAction";
    	  document.approFrm.submit();
    	  window.close();
      }

 function approEndBtn() {
	const reValue = $("#report_status");
    const apValue = $("#appro_status");
    
    if( reValue.val() == 'CR' && $("#position").val() == '과장' ){
    	alert('결재가 완료되었습니다.');
    	reValue.val('END').toString;
    	apValue.val('END').toString;
    }
    else if ( reValue.val() == 'BR' && $("#position").val() == '차장' ){
    	alert('결재가 완료되었습니다.');
    	reValue.val('END').toString;
    	apValue.val('END').toString;
    }
    else if ( reValue.val() == 'AR' && $("#position").val() == '부장' ){
    	alert('결재가 완료되었습니다.');
    	reValue.val('END').toString;
    	apValue.val('END').toString;
    }
    else {
    	alert('결재를 할 수 없습니다.');
    	window.close();
    	return false;   		  
    }
    window.opener.name="parent";
    document.approFrm.target = "parent";
    document.approFrm.method = "post";
    document.approFrm.action = "approAction";
    document.approFrm.submit();
    window.close();
 }