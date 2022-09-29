	
	function writeBtnA() {
 
		//var title = $("#title");
		var title = $("#report_title").val();
		var content = $("#report_content").val();
		var statusValue = $("#report_status");
		
		if( !title ) {
			alert("제목을  입력해주세요.");			
			}
		else {		
			if(statusValue.val() == '임시저장' || statusValue.val() == '반려') {
				alert("수정완료");
				$("#report_status").val('임시저장').toString;
				$("#writeFrm").attr({"action":"reportUpdate", "method":"get"}).submit();
				} 
			else if(statusValue.val() == '') {
				alert("글 등록");
				$("#report_status").val('임시저장').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			} else {
					alert("임시작성 상태에서만 글 수정이 가능합니다.");				
				}
			}			
	}
 
	function btnF() {
		var statusValue = $("#lStatus");
		statusValue.val('f').toString;
		$("#writeFrm").attr({"action":"historyAction", "method":"get"}).submit();
	}
