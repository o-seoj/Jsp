<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>shop/customer::modify</title>
	</head>
	<body>
		<h3>shop/customer 수정</h3>
		
		<a href="/ch10">처음으로</a>
		<a href="/ch10/shop/customer/list.do">목록이동</a>
		
		<form action="/ch10/shop/customer/modify.do" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="user_id" readonly value="${user1DTO.user_id}" placeholder="아이디 입력"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${user1DTO.name}" placeholder="이름 입력"/></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="hp" value="${user1DTO.hp}" placeholder="휴대폰 입력(- 포함)"/></td>
				</tr>
					<td>주소</td>
					<td><input type="text" name="address" placeholder="주소 입력"/></td>
				</tr>
				<tr>
					<td>등록일</td>
					<td><input type="date" name="rdate"/></td>
				</tr>
				<tr>					
					<td colspan="2" align="right">
						<input type="submit" value="수정하기"/>
					</td>
				</tr>			
			</table>		
		</form>			
	</body>
</html>