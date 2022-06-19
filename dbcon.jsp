<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	 Connection con =null;
	 PreparedStatement pstmt = null ;
	 ResultSet rs  = null;

	 String url = "jdbc:mysql://localhost:3306/pj";
	 String user = "root";
	 String passwd = "123456";

	Class.forName("com.mysql.jdbc.Driver"); 
 	con = DriverManager.getConnection(url, user ,passwd); 
%>