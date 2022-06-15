// JS 라이브러리 완성! (유효성 검사용 라이브러리)

// 일반적으로 유효성 검사하는 것들을
// 함수형태로 정리해서 나중에 필요할때 사용 (=쓰기 편하게)
// .jar 쓰던 것처럼(lib 직접 만들어서 쓰자!)

// 문제가 있으면 true, 괜찮으면 false

// <input>을 넣으면..
// 거기에 글자가 없으면 true(문제o), 있으면 false

function isEmpty(input){
	return !input.value; //값이 없다는 뜻.
}//아무것도 안들어있는 ''는 false 뭐라도 넣으면 true
//즉, false를 한번 꺾어서 true로 만듦 -> 문제가 있다는것


// <input>과, 글자수를 넣었을때
// 글자수 보다 적으면 true(문제o), 아니면 false(문제가 없음!)

function lessThan(input, length){ //(아무거나, 글자수)
	return input.value.length < length; //input.value.length이 length보다 작으면 바로 return
}



// <input>을 넣으면
// 한글/특수문자 들어있으면 true(문제o), 아니면 false(문제가 없음!)

// input.value = "엠지";

function containKR(input){
	let ok = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"
	//한글을 빼기엔 힘드니 반대로 영어를 빼버림= 영어는 허용하겠다는 말 + @ . _ 도 허용
	
	for(let i=0; i<input.value.length; i++){
		if(ok.indexOf(input.value[i]) == -1){ //js에서 -1이란 없다는 뜻임
			return true; //'엠'이라는 글자가 없으니까 true(문제o)
		}
		
	}
	
}

// <input> x2 넣으면 (비번확인)
// 내용이 다르면 true(문제ㅇ), 아니면 false(문제 없음)

function matchPW(input, input2){
	if(input2.value != input.value){
		return true;
	}else{
		return false;
	}
}

//위와 기능 같지만 더 간단한 펑션
//function matchPW(input, input2){
//		return input2.value != input.value;
//}


// <input>, 문자열 세트 -> 대문자, 숫자 포함 시키라는 조건
// 그 문자열 세트가 포함 안되어 있으면 true(문제o)
// 들어 있으면 false(문제 없음)

function notContain(input, set){
// 사용자가 input에 1qwerASD나 ASD를 넣었을 경우
// set : 123456789 -> 숫자를 반드시 포함시키고 싶다는 뜻
// set : QWERTYUIOPASDFGHJKLZXCVBNM -> 대문자를 반드시 포함해라
	for(let i=0; i<set.length; i++){
		if(input.value.indexOf(set[i]) != -1){ //있다는 뜻
			return false;
		}	
	}return true;
}


// <input>을 넣어서
// 숫자가 아니면 true(문제o), 숫자면 false
// input : 123
// input : aaa
function isNotNumber(input){
	return isNaN(input.value); //자바스크립스 숫자 내장 함수.
}