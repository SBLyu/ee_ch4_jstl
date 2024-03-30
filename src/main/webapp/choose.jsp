<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:choose>
			<c:when test="${ param.action }">
				test屬性值為true，則由<b>when標籤</b>進行輸出
			</c:when>
			<c:otherwise>
				test屬性值為false，則由<b>otherwise標籤</b>進行輸出
			</c:otherwise>
		</c:choose>
	</body>
</html>