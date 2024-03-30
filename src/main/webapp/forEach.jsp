<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="BIG5">
		<title>for-Each標籤</title>
		
		<style>
			div{
				float:left; padding:3px; width:50px; text-align:center;
			}
			table{margin:78px;}
			th{padding:12px; text-align:left;}
			#r1{background:#87A288}
			#r2{background:#FF9866}
		</style>
		
	</head>
	<body>
		<table>
			<th id="r1">1~100中，2的倍數</th>
			<tr>
				<td>
					<c:forEach var="event" begin="2" end="100" step="2">
						<div>${ event }</div>
					</c:forEach>
				</td>
			</tr>
			<th id="r2">1~100中，7的倍數</th>
			<tr>
				<td>
					<c:forEach var="num" begin="1" end="100" step="1">
						<c:choose>
							<c:when test="${ num%7==0 }">
								<div>${ num }</div>
							</c:when>
						</c:choose>
					</c:forEach>
				</td>
			</tr>
		</table>
	</body>
</html>