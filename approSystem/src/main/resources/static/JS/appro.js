	
	function writeBtnA() {
 
		var title = $("#report_title").val();
		const statusValue = $("#report_status");
		
		if( !title ) {
			alert("제목을 입력해주세요.");			
			}
		else {		
			if(statusValue.val() == 'TS' || statusValue.val() == 'RT') {
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
		//const reportID = $("#report_id").val();
		const position = $("#member_position").val();
		
		if( !title ) {
			alert("제목을  입력해주세요.");			
			}
		else {		
			if( statusValue.val() == 'TS' && position == 'EE' ) {
				alert("결재대기 등록");
				$("#report_status").val('DR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'TS' && position == 'DD' ){
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'TS' && position == 'CC' ){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'TS' && position == 'BB' ){
				alert("결재대기 등록");
				$("#report_status").val('AR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if(statusValue.val() == '' && position == 'EE' ) {
				alert("결재대기 등록");
				$("#report_status").val('DR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == 'DD' ){
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == 'CC' ){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == 'BB' ){
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
		
		title = $("#report_title").val();
		statusValue = $("#report_status");
		
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
		
		title = $("#report_title").val();
		statusValue = $("#report_status");
		const position = $("#member_position").val();
		
		if( !title ) {
			alert("제목을 입력해주세요.");			
			}
		else {		
			if( statusValue.val() == 'RT' && (position == 'EE' || position == 'DD') ) {
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'RT' && position == 'CC' ){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == 'RT' && position == 'BB' ){
				alert("결재대기 등록");
				$("#report_status").val('AR').toString;
				$("#writeFrm").attr({"action":"reportUpdateAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && (position == 'EE' || position == 'DD') ) {
				alert("결재대기 등록");
				$("#report_status").val('CR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == 'CC' ){
				alert("결재대기 등록");
				$("#report_status").val('BR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else if( statusValue.val() == '' && position == 'BB' ){
				alert("결재대기 등록");
				$("#report_status").val('AR').toString;
				$("#writeFrm").attr({"action":"reportWriteAction", "method":"get"}).submit();
			}
			else {
				alert("임시작성 상태에서만 글 수정이 가능합니다.");				
			}
		}				
	}
	
	