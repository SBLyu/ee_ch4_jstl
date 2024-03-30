<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>顯示檔案格式</title>
		
		<style type="text/css">
			body,td{
				font-size:12px;
			}
			table{
				border-collapse:collapse;
				border:1px solid #000000;
			}
			td{
				border:1px solid #000000;
				padding:2px;
			}
			.title td{
				text-align:center;
				background:#EEEEEE;
			}
		</style>
		
	</head>
	<body>
		<%
			request.setAttribute("files", new File("C:\\").listFiles());
		%>
		
		<table>
			<tr class="title">
				<td>File Name</td>
				<td>Type</td>
			</tr>
			
			<c:forEach var="file" items="${ files }">
				<tr>
					<td>${ file.name }</td>
					<td>
						<c:choose>
							<c:when test="${ file.directory }">資料夾</c:when>
							<c:otherwise>
								<c:if test="${ fn:endsWith(file.name,'.txt') }">TXT文字檔</c:if>
								<c:if test="${ fn:endsWith(file.name,'.jpg') }">JPG圖片</c:if>
								<c:if test="${ fn:endsWith(file.name,'.gif') }">GIF圖片</c:if>
								<c:if test="${ fn:endsWith(file.name,'.exe') }">EXE執行檔</c:if>
								<c:if test="${ fn:endsWith(file.name,'.doc') }">WORD文件</c:if>
								<c:if test="${ fn:endsWith(file.name,'.docx') }">WORD文件</c:if>
								<c:if test="${ fn:endsWith(file.name,'.xls') }">EXCEL文件</c:if>
								<c:if test="${ fn:endsWith(file.name,'.pdf') }">PDF文件</c:if>
								<c:if test="${ fn:endsWith(file.name,'.json') }">JSON文件</c:if>
								<c:if test="${ fn:endsWith(file.name,'.log') }">LOG文件</c:if>
								<c:if test="${ fn:endsWith(file.name,'.sql') }">SQL資料</c:if>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
			
		</table>
		
	</body>
</html>