<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="BIG5">
		<title>out輸出標籤</title>
		<link rel="stylesheet" type="text/css" href="css/ch4_jstl_styles.css">
	</head>
	<body>
		course參數為【<c:out value="${ param.course }"></c:out>】<br>
		interest參數為【<c:out value="${ param.interest }"></c:out>】<br>
	</body>
</html>