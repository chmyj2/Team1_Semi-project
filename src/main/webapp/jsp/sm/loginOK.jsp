<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
	<form>
		${r }<p>
		${sessionScope.accountInfo.user_id }<p>
		${sessionScope.accountInfo.user_name }님 안녕하세요.<p>		
	</form>
</div>

</body>
</html>