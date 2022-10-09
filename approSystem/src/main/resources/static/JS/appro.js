	
	function writeBtnA() {
 
		var title = $("#report_title").val();
		var statusValue = $("#report_status");
		
		if( !title ) {
			alert("제목을  입력해주세요.");			
			}
		else {		
			if(statusValue.val() == 'TS' || statusValue.val() == 'Re') {
				alert("수정완료");
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
 
		var title = $("#report_title").val();
		var statusValue = $("#report_status");
		
		if( !title ) {
			alert("제목을  입력해주세요.");			
			}
		else {		
			if( statusValue.val() == 'Re' || statusValue.val() == 'TS' || statusValue.val() == 'Re') {
				alert("결재대기 등록");
				$("#report_status").val('TS').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
				} 
			else if(statusValue.val() == '') {
				alert("결재대기 등록");
				$("#report_status").val('DR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			} 
			else {
					alert("임시작성 상태에서만 글 수정이 가능합니다.");				
			}
		}			
	}
	
	function btnF() {
		var statusValue = $("#lStatus");
		statusValue.val('f').toString;
		$("#writeFrm").attr({"action":"historyAction", "method":"get"}).submit();
	}
