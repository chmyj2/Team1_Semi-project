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
		//alert('아이디를 입력하세요.')
		swal("아이디를 입력해주세요.", "Please Enter The id").then(function() {
        })
		id.focus();
		id.value="";		
		return false;
	}
	
	if(lessThan(pw1,3)||notContain(pw1,"QWERTYUIOPASDFGHJKLZXCVBNM")||
	notContain(pw1,"qwertyuiopasdfghjklzxcvbnm")||
	notContain(pw1,"1234567890")||isEmpty(pw1)){
		//alert('패스워드를 입력하세요');
		swal("패스워드를 입력해주세요.", "Please Enter The password").then(function() {
        })
		pw1.focus();
		pw1.value="";
		return false;
	}
	
	if(matchPW(pw1,pw2)){
		//alert('비밀번호가 일치하지 않습니다.');
		swal("비밀번호가 일치하지 않습니다.", "Please match the password").then(function() {
        })
		pw2.focus();
		pw2.value="";
		return false;
	}
	
	if(isEmpty(name)){
		//alert('이름을 입력하세요.')
		swal("이름을 입력해주세요.", "Please Enter The name").then(function() {
        })
		name.focus();
		name.value="";		
		return false;
	}
	
	if(isEmpty(addr)){
		//alert('주소를 입력하세요.')
		swal("주소를 입력해주세요.", "Please Enter The address").then(function() {
        })
		addr.focus();
		addr.value="";		
		return false;
	}
	
	if(!notContain(phoneNum,"-")||isEmpty(phoneNum)){
		//alert('연락처를 입력하세요.')
		swal("연락처를 입력해주세요.", "Please Enter The Phone number").then(function() {
        })
		phoneNum.focus();
		phoneNum.value="";		
		return false;
	}
	
	if(isEmpty(birth)||isNotNumber(birth)){
		//alert('출생연도를 입력하세요.')
		swal("출생연도를 입력해주세요.", "Please Enter The year of birth").then(function() {
        })
		birth.focus();
		birth.value="";		
		return false;
	}
	
	//출생연도 예외처리
	if(matchBirth(birth)){
		//alert('입력할 수 없는 값입니다.')
		swal("입력할 수 없는 값입니다.", "The value cannot be entered").then(function() {
        })
		birth.focus();
		birth.value="";
		return false;
	}
	
	
}

function loginform(){
	let id = document.loginForm.id;
	let pw = document.loginForm.pw;
	
	if(isEmpty(id)){
		//alert('아이디를 입력하세요.')
		swal("아이디를 입력해주세요.", "Please Enter The id").then(function() {
        })
		id.focus();
		id.value="";		
		return false;
	}
	
	if(isEmpty(pw)){
		//alert('비밀번호를 입력하세요.')
		swal("패스워드를 입력해주세요.", "Please Enter The password").then(function() {
        })
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
		//alert('빈칸을 입력하세요.')
		swal("패스워드를 입력해주세요.", "Please enter a blank").then(function() {
        })
		pw2.focus();
		pw2.value="";		
		return false;
	}
	
	if(isEmpty(pw3)){
		//alert('빈칸을 입력하세요.')
		swal("빈칸을 입력해주세요.", "Please enter a blank").then(function() {
        })
		pw3.focus();
		pw3.value="";		
		return false;
	}
	
	if(matchPW(pw2,pw3)){
		//alert('비밀번호가 일치하지 않습니다.');
		swal("비밀번호가 일치하지 않습니다.", "Please match the password").then(function() {
        })
		pw3.focus();
		pw3.value="";
		return false;
	}
	
	if(isEmpty(addr)){
		//alert('빈칸을 입력하세요.')
		swal("빈칸을 입력해주세요.", "Please enter a blank").then(function() {
        })
		addr.focus();
		addr.value="";		
		return false;
	}
	
	if(!notContain(phoneNum,"-")||isEmpty(phoneNum)){
		//alert('연락처를 입력하세요.')
		swal("연락처를 입력해주세요.", "Please Enter The Phone number").then(function() {
        })
		phoneNum.focus();
		phoneNum.value="";		
		return false;
	}
	
	//update.submit();
	return true;	
}


function postReg(){
	let title = document.boardForm.title;
	let txt = document.boardForm.txt;
	
	if(isEmpty(title)){
		//alert('제목을 입력하세요.')
		swal("제목을 입력해주세요.", "Please Enter The title").then(function() {
        })
		title.focus();
		title.value="";		
		return false;
	}
	
	if(isEmpty(txt)){
		//alert('내용을 입력하세요.')
		swal("내용을 입력해주세요.", "Please Enter The text").then(function() {
        })
		txt.focus();
		txt.value="";		
		return false;
	}
	
}


//게시글 삭제 알림
function deletePost(n){
	swal.fire({
	title: '삭제하시겠습니까?',
	text: "삭제하면 복구할 수 없습니다.",
	icon: 'warning',
	showCancelButton: true,
	confirmButtonColor: '#3085d6',
	cancelButtonColor: '#d33',
	confirmButtonText: 'Delete'
}).then((result) => {
  if (result.isConfirmed) {
    Swal.fire('삭제되었습니다!','Your post has been deleted.','삭제 성공.'
    ).then(function(){
      location.href='boardFreeDeleteC?boardNum='+n})
  }
})	
	
}

//댓글 삭제 알림
function deleteComment(n,k){
	swal.fire({
	title: '삭제하시겠습니까?',
	text: "삭제하면 복구할 수 없습니다.",
	icon: 'warning',
	showCancelButton: true,
	confirmButtonColor: '#3085d6',
	cancelButtonColor: '#d33',
	confirmButtonText: 'Delete'
}).then((result) => {
  if (result.isConfirmed) {
    Swal.fire('삭제되었습니다!','Your comment has been deleted.','삭제 성공.'
    ).then(function(){
      location.href='commentDeleteC?commentNum='+n+'&boardNum='+k})
  }
})	
}

//댓글 수정창 띄우기
function commentEdit(Num){
		
		var tempClass = "."+Num;		
		const editBtn =  document.querySelector(tempClass);
		
		
		if(editBtn.style.display=='block'){
			editBtn.style.display = 'none';
		} else {
			editBtn.style.display = 'block';
		}		
	}

//댓글 수정
function commentReg(boardNum, commentNum, commentId){

	var commentTxt = document.getElementById(commentId);
	
	location.href="commentUpdateC?boardNum="+boardNum+"&commentNum="+commentNum+"&commentTxt="+commentTxt.value;
}
