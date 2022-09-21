//팝업창 숨기기&보이기 기능
function popupHideAndShow(target) {
  const targetWindow = document.getElementById(String(target)); // id가 String(문자열) 'target' 호출
    // Element.classList : 엘리먼트의 클래스 속성의 컬렉션인 활성 DOMTokenList를 반환하는 읽기 전용 프로퍼티.
    // classList 사용은 공백으로 구분된 문자열인 element.className 을 통해 엘리먼트의 클래스 목록에 접근하는 방식을 대체하는 간편한 방법.
    // Element.classList 자체는 읽기 전용 프로퍼티지만 add() remove() 메서드를 이용하여 변형 가능
  if(targetWindow.classList.contains("d-none")){ // .contains : 지정한 클래스 값이 엘리먼트의 class속성에 존재하는지 확인    
      targetWindow.classList.add("d-block"); //지정한 클래스 값을 추가
      targetWindow.classList.remove("d-none"); //지정한 클래스 값 제거
  }else if(targetWindow.classList.contains("d-block")){
      targetWindow.classList.add("d-none");
      targetWindow.classList.remove("d-block");
  }
};