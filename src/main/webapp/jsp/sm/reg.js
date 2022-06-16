function call(){
	let name = document.regForm.name;
	let id = document.regForm.id;
	let pw1 = document.regForm.pw1;
	let pw2 = document.regForm.pw2;
	let addr = document.regForm.addr;
	let phoneNum = document.regForm.phoneNum;
	let birth = document.regForm.birth;
	
	console.log(name.value);
	console.log(id.value);
	console.log(pw1.value);
	console.log(pw2.value);
	console.log(addr.value);
	console.log(phoneNum.value);
	console.log(birth.value);
	
	
	
	if(containKR(id)||lessThan(id,5)||isEmpty(id)){
		alert('아이디를 입력하세요.')
		id.focus();
		id.value="";		
		return false;
	}
	
	if(lessThan(pw1,3)||notContain(pw1,"QWERTYUIOPASDFGHJKLZXCVBNM")||
	notContain(pw1,"qwertyuiopasdfghjklzxcvbnm")||
	notContain(pw1,"1234567890")||isEmpty(pw1)){
		alert('패스워드를 입력하세요');
		pw1.focus();
		pw1.value="";
		return false;
	}
	
	if(matchPW(pw1,pw2)){
		alert('비밀번호가 일치하지 않습니다.')
		pw2.focus();
		pw2.value="";
		return false;
	}
	
	if(isEmpty(name)){
		alert('이름을 입력하세요.')
		name.focus();
		name.value="";		
		return false;
	}
	
	if(isEmpty(addr)){
		alert('주소를 입력하세요.')
		addr.focus();
		addr.value="";		
		return false;
	}
	
	if(!notContain(phoneNum,"-")||isEmpty(phoneNum)){
		alert('연락처를 입력하세요.')
		phoneNum.focus();
		phoneNum.value="";		
		return false;
	}
	
	if(isEmpty(birth)||isNotNumber(birth)){
		alert('출생연도를 입력하세요.')
		birth.focus();
		birth.value="";		
		return false;
	}
	
	
}

function loginform(){
	let id = document.loginForm.id;
	let pw = document.loginForm.pw;
	
	if(isEmpty(id)){
		alert('아이디를 입력하세요.')
		id.focus();
		id.value="";		
		return false;
	}
	
	if(isEmpty(pw)){
		alert('비밀번호를 입력하세요.')
		pw.focus();
		pw.value="";		
		return false;
	}	
	
}


function update(){
	let pw2 = document.updateForm.pw2;
	let pw3 = document.updateForm.pw3;
	let addr = document.updateForm.addr;
	let phoneNum = document.updateForm.phoneNum;
		
	if(isEmpty(pw2)){
		alert('빈칸을 입력하세요.')
		pw2.focus();
		pw2.value="";		
		return false;
	}
	
	if(isEmpty(pw3)){
		alert('빈칸을 입력하세요.')
		pw3.focus();
		pw3.value="";		
		return false;
	}
	
	if(matchPW(pw2,pw3)){
		alert('비밀번호가 일치하지 않습니다.')
		pw3.focus();
		pw3.value="";
		return false;
	}
	
	if(isEmpty(addr)){
		alert('빈칸을 입력하세요.')
		addr.focus();
		addr.value="";		
		return false;
	}
	
	if(!notContain(phoneNum,"-")||isEmpty(phoneNum)){
		alert('연락처를 입력하세요.')
		phoneNum.focus();
		phoneNum.value="";		
		return false;
	}
	
	//update.submit();
	return true;	
}