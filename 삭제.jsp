<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<section>
<hr>
<br><br>
	<%
	String delName = request.getParameter("name"); 
	%>
	이 름 : <%=delName %> [삭제완료]
	<%
	String sql = "delete from member where name=?";
	 pstmt = con.prepareStatement(sql);
	 pstmt.setString(1,delName);
   pstmt.executeUpdate();
	%>
<br><br>
<hr>
<a href="목록.jsp"><button>목록</button></a>
</section>
</body>
</html>