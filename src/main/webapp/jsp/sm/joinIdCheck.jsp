<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");


%>

<fieldset>
	<h5>아이디 중복 체크</h5>
	<form action="../joinIdCheckController" method="post" name="wfr">
		ID : <input type="text" name="userid" value="<%=id%>">
		<input type="submit" value="중복 확인">
	</form>
</fieldset>


</body>
</html>