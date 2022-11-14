
const 변수명 = " ";
const message = "is ${ 변수명} ";

const message2 = "is ${ 30+1 }";

// 숫자형
const x = 1/0; // infinity 무한대

const y = name/2; // NaN - Not a number : 숫자가 아니다.

// 존재하지 않음 Null
// 값을 할당하지 않음 : undefined

typeof // typeof 연산자 : 
typeof null // object 로 나옴. null /= 객체. 수정하지 않는다고 함.

alert // 알려줌 - 일방적으로 알리는 용도
prompt() // 입력 받음
const name = prompt("hello", "기본 값");
// 두 개의 인수를 받을 수 있으며 첫 번째 값은 메세지, 두 번째 값은 디폴트 값.
// 취소 시 null 값이 들어옴
// 프롬프트로 입력받은 값은 문자형으로 인식함.
alert("oh"+name);

confirm // 확인 받음
const isAdult = confirm("is you?");
console.log(isAdult);
// true / false 로 값 전달

// 단점. 
// 1.스크립트 일시 정지 
// 2.스타일링 x

// 빠르고 쉽게 적용가능하다는 장점이 있음.

// 자료형이 다르면 의도치않은 동작을 보여줄 수 있음.
String() // 괄호 안의 타입을 문자형으로 변환
Number() // 괄호 안의 타입을 숫자형으로 변환. 문자형 안에 글자가 써 있을 경우 NaN 발생. true와 false의 경우 1과 0으로 변환
         // 주의 !! Number(null) : 0, Number(undefined) : NaN
Boolean() // 숫자 0, 빈 문자열 '', null, undefined, NaN은 모두 false. 그 외는 true

//자동 형변환 : 자동으로 형 변환을 시켜줌. 원인을 찾기 힘든 에러를 발생
// 명시적 형변환

//연산자
+ : 더하기
- : 빼기 
* : 곱하기 
/ : 나누기
% : 나머지

// 나머지를 어디에 쓸까?
// 홀수, 짝수 구할 때
// n보다 작은 값을 구할 때 : X % N - 0~(N-1) 값 반환

// 거듭제곱
const num = 2 ** 3; // 2의 3승
console.log(num);

//비교 연산자

== // 동등 연산자
=== // 일치 연산자. 타입까지 비교

if문

논리 연산자
|| (OR) // 첫번째 true를 발견하는 즉시 평가를 멈춤
&& (AND) //첫번째 false를 발견하는 즉시 평가를 멈춤
! (Not)


break // 멈추고 반복문을 빠져나옴
continue // 멈추고 다음 반복으로 진행

switch (평가) {
  case A:
    // A일 때 코드
    ;
  case B:
    // B일 때 코드
    ;
  default:
    ;
}

if(평가 == A) {
  // A일 때 코드
} else if ( 평가 == B) {
  // B일 때 코드
} else {

}

function 함수명 ( 매개변수 ) {
  함수의 실행 코드
}

function showError() {
  alert('');
}
showError();

//전역 변수와 지역변수

함수는 한번에 한 작업에 집중
읽기 쉽고 어떤 동작인지 알 수 있게 네이밍
