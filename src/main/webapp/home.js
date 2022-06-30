
var oTbl;
//Row 추가
function insRow() {
  oTbl = document.getElementById("addTable");
  var oRow = oTbl.insertRow();
  oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
  var oCell = oRow.insertCell();

  //삽입될 Form Tag
  var frmTag = "<input  id='cocktail_ingredient' type=text name='cocktail_ingredient'style='height: 30px;width: 400px;border-radius: 5px;' >";
  frmTag += "<input type=button value='삭제' onClick='removeRow()' class='erase' style='cursor:hand'>";
  oCell.innerHTML = frmTag;
}
//Row 삭제
function removeRow() {
  oTbl.deleteRow(oTbl.clickedRowIndex);
}






var oTbll;
//Row 추가
function insRow2() {
  oTbll = document.getElementById("addTable2");
  var oRoww = oTbll.insertRow();
  oRoww.onmouseover=function(){oTbll.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
  var oCell = oRoww.insertCell();

  //삽입될 Form Tag
  var frmTag = "<input type=text id='cocktail_tag'  name='cocktail_tag' style='height: 30px;width: 400px;border-radius: 5px;' >";
  frmTag += "<input type=button value='삭제' onClick='removeRow2()' class='erase' style='cursor:hand'>";
  oCell.innerHTML = frmTag;
}
//Row 삭제
function removeRow2() {
  oTbll.deleteRow(oTbll.clickedRowIndex);
}




var oTblll;
//Row 추가
function insRow3() {
  oTblll = document.getElementById("addTable3");
  var oRowww = oTblll.insertRow();
  oRowww.onmouseover=function(){oTblll.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
  var oCelll = oRowww.insertCell();

  //삽입될 Form Tag
  var frmTag = "<input type=text  id='cocktail_recipe' name='cocktail_recipe' style='height: 30px;width: 400px;border-radius: 5px;' >";
  frmTag += "<input type=button value='삭제' onClick='removeRow3()' class='erase' style='cursor:hand'>";
  oCelll.innerHTML = frmTag;
}
//Row 삭제
function removeRow3() {
  oTblll.deleteRow(oTblll.clickedRowIndex);
}







function frmCheck(){
	
 	
  var frm = document.form;
   var name = document.getElementById("cocktail_name").value;
   var info = document.getElementById("cocktail_info").value;
   var recipe = document.getElementById("cocktail_recipe").value;
   var ingredient = document.getElementById("cocktail_ingredient").value;
   var tag = document.getElementById("cocktail_tag").value;
   
   if(name == ""){
	swal("술 이름을 입력해주세요.", "Please Enter The Name Of The Drink.").then(function() {
		})
	 	return false;
	}else if(info == ""){
		swal("술 정보를 입력해주세요.", "Please Enter The Information Of The Drink.").then(function() {
		})
	 	return false;
	}else if(tag == ""){
		swal("태그를 입력해주세요.", "Please Enter The Tag Of The Drink.").then(function() {
		})
	 	return false;
	}else if(recipe == ""){
		swal("술 레시피를 입력해주세요.", "Please Enter The Recipe Of The Drink.").then(function() {
		})
	 	return false;
	}else if(ingredient == ""){
		swal("술 재료를 입력해주세요.", "Please Enter The Ingredient Of The Drink.").then(function() {
		})
	 	return false;
	}
	
	
  
   frm.submit();
  
   
 
 
 
 }
 
 
 
 
function deleteDrinkInfo(PKnum,img){
	
	
	
Swal.fire({
  title: '삭제하시겠습니까?',
  text: "삭제하면 복구할 수 없습니다.",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Delete'
}).then((result) => {
  if (result.isConfirmed) {
    Swal.fire(
      '삭제되었습니다!',
      'Your file has been deleted.',
      '삭제 성공.'
    ).then(function(){
      location.href='Drink_Info_DeleteController?PKnum='+ PKnum + '&img=' + img;
	
	
})
  }
})
	
	
	
}


function removeinput_value(){
	var el = document.getElementsByClassName('drink_reg_input');
	for(var i=0; i<el.length; i++){	
		el[i].value = '';}
	
	
}
function removeinput_value2(){
	var el = document.getElementsByClassName('drink_reg_input2');
	for(var i=0; i<el.length; i++){	
		el[i].value = '';}
	
	
}
function removeinput_value3(){
	var el = document.getElementsByClassName('drink_reg_input3');
	for(var i=0; i<el.length; i++){	
		el[i].value = '';}
	
	
}


 
   
   
 
