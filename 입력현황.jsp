<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
   
String sql = "INSERT INTO member (name, id, dep, birth1, birth2, birth3, choice, ph01, ph02, ph03) values(?,?,?,?,?,?,?,?,?,?,?,?)";
pstmt = con.prepareStatement(sql);
    
pstmt.setString(1, name);
pstmt.setString(2,id);
pstmt.setString(3, dep);
    
pstmt.setString(4, birth1);
pstmt.setString(5, birth2);
pstmt.setString(6, birth3);
    
pstmt.setString(7, choice);
pstmt.setString(8, ph01);
pstmt.setString(9, ph02);
pstmt.setString(10, ph03);
    
pstmt.setString(11,sex);
pstmt.setString(12, memo);
    
pstmt.executeUpdate();
response.sendRedirect("목록.jsp");
pstmt.close();
con.close();
%>
</head>
<body>
</body>
</html>