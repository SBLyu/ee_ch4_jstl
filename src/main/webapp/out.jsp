<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="BIG5">
		<title>out��X����</title>
		<link rel="stylesheet" type="text/css" href="css/ch4_jstl_styles.css">
	</head>
	<body>
		course�ѼƬ��i<c:out value="${ param.course }"></c:out>�j<br>
		interest�ѼƬ��i<c:out value="${ param.interest }"></c:out>�j<br>
	</body>
</html>