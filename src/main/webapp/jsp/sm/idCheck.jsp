<%@page import="com.util.db.DBManager"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="netscape.javascript.JSObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String id = (String) request.getParameter("id");

Connection con = null; //연결 객체
PreparedStatement pstmt = null; //실행 도구
ResultSet rs = null; //결과



try {

	String sql = "select * from user_info_tbl where user_id = ?";
	con = DBManager.connect();
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	
	JSONObject jo = new JSONObject();
	
	if(rs.next()){
		jo.put("r", "1");
	} else {
		jo.put("r", "0");
	}
	
response.setContentType("application/json");
out.print(jo.toJSONString());

} catch(Exception e) {
	e.printStackTrace();
} finally {
	com.util.db.DBManager.close(con, pstmt, rs);
}


%>