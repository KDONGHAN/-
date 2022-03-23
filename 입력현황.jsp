<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>학생관리프로그램</title>
</head>
<body>
	학생 정보
	<hr color="black">
	<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("s_name");
    String id = request.getParameter("s_id");
    
    String birth1 = request.getParameter("year");
    String birth2 = request.getParameter("month");
    String birth3 = request.getParameter("date");
    
    String dep = request.getParameter("department");
    String sex = request.getParameter("gender");
    String memo = request.getParameter("memo");
		%>
			<p> 이름 : <%= name %>
			<p> 학번 : <%= id %>
			<p> 생년월일 : <%= birth1 %>년  <%= birth2 %>월  <%= birth3 %>일  
			<p> 학과 : <%= dep %>
			<p> 성별 : <%= sex %>
			<p> 특이사항 : <%= memo %>
	<hr color="black">
</body>
</html>