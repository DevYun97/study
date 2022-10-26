 //회원가입 JS
 function memberJoin() {     
    if( $("#position").val() == '부장' || $("#position").val() == 'BB' || ( $("#position").val() == 'CC' && $("#dep").val() == '인사팀' )) {
        //location.href='memberDelete?member_id=${ member.member_id }';
        return true;
    }
    else {
        alert('권한 없는 사용자입니다.');
    	return false;
	}   	
 }