<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 학생관리프로그램 </title>
</head>
<body>
 정보 입력
 <hr color="black">
 <form action="입력현황.jsp" name="student_info" method="get">
 	이름 :
 	<input type="text" name="s_name" maxlength="10" size="9"><br><br>
 	
 	학번 :
 	<input type="text" name="s_id" maxlength="9" size="9"><br><br>
 	
 	생년월일 :
 	<input type="text" name="year" maxlength="4" size="4">년  
 	<input type="text" name="month" maxlength="2" size="2">월  
 	<input type="text" name="date" maxlength="2" size="2">일<br><br>
 	
 	학과 :
 	<select name="department">
 		<option value="없음"> ---학과없음--- </option>
 		<option value="컴퓨터공학과"> 컴퓨터공학과 </option>
 		<option value="소프트웨어공학과"> 소프트웨어공학과 </option>
 	</select> <br><br>
 	 	
 	성별 :
 	<input type="radio" name="gender" value="남성">남
 	<input type="radio" name="gender" value="여성">여 <br><br>
 	
 	특이사항 :<br>
 	<textarea name="memo" cols="50" rows="5">
 	</textarea>
 	<hr color="black">
 	 
 	<input type="submit" value=" 확인 " > &nbsp;
  <input type="reset" value=" 취소 ">
 </form>

</body>
</html>