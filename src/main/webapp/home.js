
var oTbl;
//Row 추가
function insRow() {
  oTbl = document.getElementById("addTable");
  var oRow = oTbl.insertRow();
  oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
  var oCell = oRow.insertCell();

  //삽입될 Form Tag
  var frmTag = "<input type=text name='cocktail_ingredient' style='width: 300px'>";
  frmTag += "<input type=button value='삭제' onClick='removeRow()' style='cursor:hand'>";
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
  var frmTag = "<input type=text name='cocktail_tag' style='width: 300px'>";
  frmTag += "<input type=button value='삭제' onClick='removeRow2()' style='cursor:hand'>";
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
  var frmTag = "<input type=text name='cocktail_recipe' style='width: 300px'>";
  frmTag += "<input type=button value='삭제' onClick='removeRow3()' style='cursor:hand'>";
  oCelll.innerHTML = frmTag;
}
//Row 삭제
function removeRow3() {
  oTblll.deleteRow(oTblll.clickedRowIndex);
}







function frmCheck(){
	
	
  var frm = document.form;

  
  
  for( var i = 0; i <= frm.elements.length - 1; i++ ){
	
	
	
     if( frm.elements[i].name == "cocktail_recipe" ){
         if( !frm.elements[i].value ){
             alert("레시피를 입력하세요!");
                 frm.elements[i].focus();
	 return;
          }
      }else if(frm.elements[i].name == "cocktail_ingredient"){
			if( !frm.elements[i].value ){
             alert("재료를 입력하세요!");
                 frm.elements[i].focus();
	 return;
          }
		}else if(frm.elements[i].name == "cocktail_tag"){
			if( !frm.elements[i].value ){
             alert("태그를 입력하세요!");

                 frm.elements[i].focus();
	 return;
          }
   }
   
   frm.submit();
  
   
 
 }
 
 }
 
function deleteDrinkInfo(PKnum){
	
	let ok = confirm('정말 삭제 합니까?')
	console.log(ok)
	
	if(ok){
		location.href='Drink_Info_DeleteController?PKnum='+ PKnum
	}
	
}



 
   
   
 
