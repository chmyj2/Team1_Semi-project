function call(){
	let name = document.regForm.name;
	let id = document.regForm.id;
	let pw1 = document.regForm.pw1;
	let pw2 = document.regForm.pw2;
	
	console.log(name.value);
	console.log(id.value);
	console.log(pw1.value);
	console.log(pw2.value);
	
	if(isEmpty(name)){
		alert('name 입력 에러!')
		name.focus();
		name.value="";		
		return false;
	}
	
	if(containKR(id)||lessThan(id,5)){
		alert('id 입력 에러!')
		id.focus();
		id.value="";		
		return false;
	}
	
	if(lessThan(pw1,3)||notContain(pw1,"QWERTYUIOPASDFGHJKLZXCVBNM")||
	notContain(pw1,"qwertyuiopasdfghjklzxcvbnm")||
	notContain(pw1,"1234567890")){
		alert('pw 입력 에러!');
		pw1.focus();
		pw1.value="";
		return false;
	}
	
	if(matchPW(pw1,pw2)){
		alert('비밀번호가 재확인 실패!')
		pw2.focus();
		pw2.value="";
		return false;
	}
	
	
	
	
	
	
	
}