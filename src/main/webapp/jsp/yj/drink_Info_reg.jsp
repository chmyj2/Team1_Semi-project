<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>
<h1>술등록</h1>


<table border="1">
  <tr>
    <td colspan="2">
      <table border="1">
        <tr>
         <td colspan="5">
         <input name="addButton" type="button" style="cursor:hand" onClick="insRow()" value="추가"></td>
        </tr>
        <tr>
         <td>
         <form  name="form" action="drink_Info_regController" method="post">
           <table id="addTable" border="1">
            <tr>
             	<td><input type="text" name="addText"></td>
              <td></td>
            </tr>
          </table>
	<table id="mTbl">
		<tr>
			<td>술이름</td>
			<td><input name="cocktail_name"></td>
		</tr>
		<tr>
			<td>술 설명</td>
			<td><textarea name="cocktail_info"></textarea></td>
		</tr>
		<tr>
			<td>만드는 법(레시피)</td>
			<td><textarea name="cocktail_recipe"></textarea></td>
		</tr>
		<tr>
			<td>술 이미지</td>
			<td><input type="file" name="file"></td>
		</tr>
		<tr>
			<td>태그</td>
			<td><input name="cocktail_tag"></input></td>
		</tr>
			
	</table>
          </form>
          
          
          
          </td>
        </tr>
       </table>
      </td>
   </tr>
 </table>






 <table border="1">
 	<tr>
    	<td>
     		<input type="button" name="button" value="확인" onClick="frmCheck(),frmCheck2(cocktail_name);">
      	</td>
    </tr>
 </table>

    










</body>
</html>