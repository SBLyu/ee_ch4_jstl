<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="BIG5">
		<title>ch4_JSTL執行首頁</title>
		<link rel="stylesheet" type="text/css" href="css/ch4_jstl_styles.css">
	</head>
	<body>
		<div align="center">
			<fieldset style="width:50%">
				<legend class="header">ch4_JSTL執行首頁</legend>
				<li>
					<a class="tips" href="/ch4_jstl/out.jsp?course=JAVA Web&interest=Baseball"> &lt;c:out&gt; </a>
				</li>
				<li>
					<a class="tips" href="/ch4_jstl/if.jsp?action=add"> 註冊操作 &lt;c:out&gt; </a>
				</li>
				<li>
					<a class="tips" href="/ch4_jstl/if.jsp?action=edit&login=Jason"> 修改操作 &lt;c:out&gt; </a>
				</li>
				<li>
					【true】<a class="tips" href="/ch4_jstl/choose.jsp?action=true"> &lt;c:choose&gt; </a>
				</li>
				<li>
					【false】<a class="tips" href="/ch4_jstl/choose.jsp?action=false"> &lt;c:choose&gt; </a>
				</li>
				<li>
					<a href="/ch4_jstl/forEach.jsp"> &lt;c:forEach&gt; </a>
				</li>
				<li>
					<a href="/ch4_jstl/forEachList.jsp"> &lt;c:forEachList&gt; </a>
				</li>
				<li>
					<a href="/ch4_jstl/set.jsp?name=Ann"> &lt;c:set&gt; </a>
				</li>
				<li>
					<a href="/ch4_jstl/timeZone.jsp"> &lt;fmt:timeZone&gt; </a>
				</li>
				<li>
					<a href="/ch4_jstl/endsWith.jsp"> &lt;fn:endsWith&gt; </a>
				</li>
				<li>
					<a href="/ch4_jstl/contains.jsp"> &lt;fn:contains&gt; </a>
				</li>
			</fieldset>
		</div>
	</body>
</html>