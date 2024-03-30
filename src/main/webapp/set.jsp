<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="mad.nthu.ch4_jstl.Person" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:set var="totalCount" value="${ totalCount+1 }" scope="application"></c:set>
		<c:set var="count" value="${ count+1 }" scope="session"></c:set>
		本網站總訪問人數:${ totalCount }<br>
		其中您造訪次數:${ count }<br>
		<hr>
		
		<%
			request.setAttribute("person", new Person() );
			request.setAttribute("map", new HashMap());
		%>
		
		<c:set target="${ person }" property="name" value="${ param.name }"></c:set>
		存放在<b>Java Bean物件</b>中的登入使用者:${ person.name }<br>
		
		<c:set target="${ map }" property="name" value="${ param.name }"></c:set>
		存放在<b>Map物件</b>中的登入使用者:${ map.name }<br>
		
	</body>
</html>