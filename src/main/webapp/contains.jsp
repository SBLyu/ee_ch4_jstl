<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		header['User-Agent']=${ header['User-Agent'] };<br><br>
		
		您使用[
			<c:if test="${ fn:contains(header['User-Agent'],'Chrome') }">Chrome瀏覽器</c:if>
			<c:if test="${ fn:contains(header['User-Agent'],'Firefox') }">Firefox瀏覽器</c:if>
			<c:if test="${ fn:contains(header['User-Agent'],'MSIE') }">IE瀏覽器</c:if>
			<c:if test="${ fn:contains(header['User-Agent'],'Opera') }">Opera瀏覽器</c:if>
			<c:if test="${ fn:contains(header['User-Agent'],'Kubuntu') }">Kubuntu瀏覽器</c:if>
		],[
			<c:if test="${ fn:contains(header['User-Agent'],'NT 6.1') }">Win7作業系統</c:if>
			<c:if test="${ fn:contains(header['User-Agent'],'NT 6.2') }">Win8作業系統</c:if>
			<c:if test="${ fn:contains(header['User-Agent'],'NT 6.3') }">Win8.1作業系統</c:if>
			<c:if test="${ fn:contains(header['User-Agent'],'NT 10.0') }">Win10作業系統</c:if>
			<c:if test="${ fn:contains(header['User-Agent'],'Linux') }">Linux作業系統</c:if>
		]
	</body>
</html>