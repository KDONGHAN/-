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
    String dep = request.getParameter("department");
    
    String birth1 = request.getParameter("year");
    String birth2 = request.getParameter("month");
    String birth3 = request.getParameter("date");
    
    String choice = request.getParameter("choice");
    String ph01 = request.getParameter("phone1");
    String ph02 = request.getParameter("phone2");
    String ph03 = request.getParameter("phone3");
    
    String sex = request.getParameter("gender");
    String memo = request.getParameter("memo");
		%>
			<p> 이름 : <%= name %>
			<p> 학번 : <%= id %>
			<p> 학과 : <%= dep %>
			<p> 전화번호 : <%= choice %> <%= ph01 %>-<%= ph02 %>-<%= ph03 %>
			<p> 생년월일 : <%= birth1 %>년  <%= birth2 %>월  <%= birth3 %>일  
			<p> 학과 : <%= dep %>
			<p> 성별 : <%= sex %>
			<p> 특이사항 : <%= memo %>
	<hr color="black">
</body>
</html>