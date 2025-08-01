<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>User5 목록</title>
	</head>
	<body>
		<h3>User5 목록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./list.jsp">목록이동</a>
		
		<form action="./proc/register.jsp" method="post">
			<table border="1">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="아이디 입력"/></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<label><input type="radio" name="gender" value="M"/>남자</label>
						<label><input type="radio" name="gender" value="F"/>여자</label>
					</td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" placeholder="숫자 입력"/></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="addr" placeholder="주소 입력"/></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
					<input type="submit" value="등록하기"/>
				</tr>		
			</table>
		</form>
	</body>
</html>