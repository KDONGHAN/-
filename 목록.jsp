<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 목록</title>
</head>
<body>
<section>
<% 
String sql = "SELECT * FROM member";
       pstmt = con.prepareStatement(sql);
       rs = pstmt.executeQuery();
%>

<%	
int count=1;
String bg = null;

while(rs.next()){
	str += rs.getString("name") + rs.getString("id") + rs.getString("dep") + rs.getString("birth1") + rs.getString("birth2") + rs.getString("birh3") + rs.getString("choice") + rs.getString("ph01") + rs.getString("ph02") + rs.getString("ph03") + rs.getString("sex") + rs.getString("memo") + "<br>";
	
	count += 1;

%>    
<tr bgcolor=<%=bg%>>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("id")%></td>
<td><%=rs.getString("dep")%></td>
<td><%=rs.getString("birth1")%></td> 
<td><%=rs.getString("birth2")%></td> 
<td><%=rs.getString("birth3")%></td>
<td><%=rs.getString("choice")%></td>
<td><%=rs.getString("ph01")%></td>
<td><%=rs.getString("ph02")%></td>
<td><%=rs.getString("ph03")%></td>
<td><%=rs.getString("sex")%></td>
<td><%=rs.getString("memo")%></td>     
</tr>
<% } %>

</section>
<% 
rs.close();
pstmt.close();
con.close();
%>
</body>
</html>