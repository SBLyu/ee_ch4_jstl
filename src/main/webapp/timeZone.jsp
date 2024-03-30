<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.util.HashMap" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>全球24時區顯示</title>
		
		<style type="text/css">
			table,td,tr{font-size:12px;}
			table{
				border-collapse:collapse;
				border:1px solid #000000;
			}
			td,th{
				border:1px solid #000000;
				padding:2px;
				padding-left:10px;
				padding-right:10px;
			}
			.title{
				background:#EEEEEE;
			}
			.title td{
				text-align:center;
			}
		</style>
		
	</head>
	<body>
		<%
			Map<String, TimeZone> hashMap=new HashMap<String, TimeZone>();
		
			for(String ID:TimeZone.getAvailableIDs()){
				hashMap.put(ID,TimeZone.getTimeZone(ID));
			}
			request.setAttribute("timeZoneIds", TimeZone.getAvailableIDs());
			request.setAttribute("timeZone", hashMap);
		%>
		
		<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
		
		<fmt:setLocale value="zh_TM"/>
		
		現在時刻: <%=TimeZone.getDefault().getDisplayName() %>
		<fmt:formatDate value="${ date }" type="both"/>
		
		<table>
			<tr class="title">
				<td>時區ID</td>
				<td>時區</td>
				<td>現在時間</td>
				<td>時差</td>
			</tr>
			
			<c:forEach var="ID" items="${ timeZoneIds }" varStatus="status">
				<tr>
					<td>${ ID }</td>
					<td>${ timeZone[ID].displayName }</td>
					<td>
						<fmt:timeZone value="${ ID }">
							<fmt:formatDate value="${ date }" type="both" timeZone="${ ID }"/>
						</fmt:timeZone>
					</td>
					<td>${ timeZone[ID].rawOffset /60/60/1000 }</td>
				</tr>			
			</c:forEach>
			
		</table>
		
	</body>
</html>