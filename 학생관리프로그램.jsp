<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 학생관리프로그램 </title>
	<script type="text/javascript">
		function checkFun()
		{
				var f = document.s_infoForm;
				
				var name = f.s_name.value;

				for(count = 0; count < f.s_name.value.length; count++)
				{
					var ch = f.s_name.value.charAt(count);
				}
				if(f.s_name.value=="")
				{
					alert("이름을 입력해주세요.");
					f.s_name.focus();
					return false;
				}
				
				var regExpName = /^[|가-힣]*$/;
				if(!regExpName.test(name))
				{
					alert("이름은 한글로 입력해주세요.");
					f.s_name.focus();
					return false;
				}
				
				else if(f.s_id.value=="")
				{
					alert("학번을 입력해주세요.");
					f.s_id.focus();
					return false;
				}
				
				else if(f.s_id.value.length != 9)
				{
					alert("학번은 9자리로 입력해야합니다.");
					f.s_id.focus();
					return false;
				}
				
				else if(isNaN(f.s_id.value))
				{
					alert("숫자만 입력가능합니다.");
					f.s_id.focus();
					return false;
				}
				
				else if(f.year.value=="")
				{
					alert("생년월일을 입력해주세요.");
					f.year.focus();
					return false;
				}
				
				else if(isNaN(f.year.value))
				{
					alert("숫자만 입력가능합니다.");
					f.year.focus();
					return false;
				}	
				
				else if(f.month.value=="")
				{
					alert("생년월일을 입력해주세요.");
					f.month.focus();
					return false;
				}
				
				else if(isNaN(f.month.value))
				{
					alert("숫자만 입력가능합니다.");
					f.month.focus();
					return false;
				}
				
				else if(f.date.value=="")
				{
					alert("생년월일을 입력해주세요.");
					f.date.focus();
					return false;
				}
				
				else if(isNaN(f.date.value))
				{
					alert("숫자만 입력가능합니다.");
					f.date.focus();
					return false;
				}
				
				else if(f.phone1.value=="")
				{
					alert("전화번호를 입력해주세요.");
					f.phone1.focus();
					return false;
				}
				
				else if(f.phone1.value.length != 3)
				{
					alert("전화번호 첫번째 자리는 3자리로 입력해야합니다.");
					f.phone1.focus();
					return false;
				}
				
				else if(isNaN(f.phone1.value))
				{
					alert("숫자만 입력가능합니다.");
					f.phone1.focus();
					return false;
				}
				
				else if(f.phone2.value=="")
				{
					alert("전화번호를 입력해주세요.");
					f.phone2.focus();
					return false;
				}
				
				else if(f.phone2.value.length != 4)
				{
					alert("전화번호 두번째 자리는 4자리로 입력해야합니다.");
					f.phone2.focus();
					return false;
				}
				
				else if(isNaN(f.phone2.value))
				{
					alert("숫자만 입력가능합니다.");
					f.phone2.focus();
					return false;
				}
				else if(f.phone3.value=="")
				{
					alert("전화번호를 입력해주세요.");
					f.phone3.focus();
					return false;
				}
				
				else if(f.phone3.value.length != 4)
				{
					alert("전화번호 세번째 자리는 4자리로 입력해야합니다.");
					f.phone3.focus();
					return false;
				}
				
				else if(isNaN(f.phone3.value))
				{
					alert("숫자만 입력가능합니다.");
					f.phone3.focus();
					return false;
				}
				
				else if(f.gender.value=="")
				{
					alert("성별을 골라주세요.");
					f.gender.focus();
					return false;
				}		
				else return true;
		}
		</script>
</head>		
<body>
 정보 입력
 <hr color="black">
 <form name="s_infoForm" action="입력현황.jsp" method="post" onsubmit="return checkFun()">

 	이름 :
 	<input type="text" name="s_name" maxlength="10" size="9"><br><br>
 		
 	학번 :
 	<input type="text" name="s_id" maxlength="9" size="9"><br><br>
 	
 	학과 :
 	<select name="department">
 		<option value="없음"> ---학과없음--- </option>
 		<option value="컴퓨터공학과"> 컴퓨터공학과 </option>
 		<option value="소프트웨어공학과"> 소프트웨어공학과 </option>
 	</select> <br><br>
 	
 	생년월일 :
 	<input type="text" name="year" maxlength="4" size="4">년  
 	<input type="text" name="month" maxlength="2" size="2">월  
 	<input type="text" name="date" maxlength="2" size="2">일<br><br>
 	
 	전화번호 :
 	<select name="choice" style="width:60px;height:20.5px">
 		<option value="choice"> 선택 </option>
 		<option value="SKT"> SKT </option>
 		<option value="KT"> KT </option>
 		<option value="LG"> LGU+ </option>
 	</select>
 	<input type="text" maxlength="3" size="3" name="phone1"> -
 	<input type="text" maxlength="4" size="4" name="phone2"> -  
 	<input type="text" maxlength="4" size="4" name="phone3"><br><br>  
 	
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