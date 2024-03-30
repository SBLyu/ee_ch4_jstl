<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<fieldset style="width:60%">
			<c:if test="${ param.action == 'add' }">
				<legend>註冊操作</legend>
				<table>
					<tr>
						<td>帳號</td>
						<td><input type="text" name="login"></td>
					</tr>
					<tr>
						<td>真實姓名</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>密碼</td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						
						<td><input type="submit" value=" 註冊 "></td>
					</tr>
				</table>
			</c:if>
			
			<c:if test="${ param.action == 'edit' }">
				<legend>修改操作</legend>
				<table>
					<tr>
						<td>帳號</td>
						<td><c:out value="${ param.login }"></c:out></td>
					</tr>
					<tr>
						<td>真實姓名</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>密碼</td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						
						<td><input type="submit" value=" 送出修改 "></td>
					</tr>
				</table>
			</c:if>
		</fieldset>
	</body>
</html>