<%@ page import="mad.nthu.ch4_jstl.Person" %>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	List<Person> personList=new ArrayList<Person>();
	int i=1;
	
	Person person = new Person();
	person.setId(i++);
	person.setName("史蒂芬咖哩");
	person.setAge(27);
	person.setSex("男");
	person.setAddress("美國加州舊金山市");
	person.setBirthday("1992-04-11");
	person.setMobile("0911303030");
	person.setCity("舊金山");

	personList.add(person);
	
	Person person2 = new Person();
	person2.setId(i++);
	person2.setName("克萊湯普森");
	person2.setAge(28);
	person2.setSex("男");
	person2.setAddress("美國加州舊金山市");
	person2.setBirthday("1991-02-21");
	person2.setMobile("0966111111");
	person2.setCity("舊金山");

	personList.add(person2);
	
	Person person3 = new Person();
	person3.setId(i++);
	person3.setName("王建民");
	person3.setAge(39);
	person3.setSex("男");
	person3.setAddress("台灣台南市北區");
	person3.setBirthday("1980-03-30");
	person3.setMobile("0955676767");
	person3.setCity("台南市");

	personList.add(person3);
	
	Person person4 = new Person();
	person4.setId(i++);
	person4.setName("陳金鋒");
	person4.setAge(43);
	person4.setSex("男");
	person4.setAddress("台灣高雄市發大財區");
	person4.setBirthday("1975-12-03");
	person4.setMobile("0910525252");
	person4.setCity("高雄市");
	
	personList.add(person4);
		
	Person person5 = new Person();
	person5.setId(i++);
	person5.setName("張泰山");
	person5.setAge(42);
	person5.setSex("男");
	person5.setAddress("台灣台中市北區");
	person5.setBirthday("1976-10-31");
	person5.setMobile("0966494949");
	person5.setCity("台中市");
	
	personList.add(person5);
	
	Person person6 = new Person();
	person6.setId(i++);
	person6.setName("習維尼");
	person6.setAge(71);
	person6.setSex("男");
	person6.setAddress("中共北京市紫禁城");
	person6.setBirthday("1948-01-01");
	person6.setMobile("09001010101");
	person6.setCity("北京市");
	
	personList.add(person6);
	
	request.setAttribute("personList", personList);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="BIG5">
		<title>forEach - Go Through List</title>
		
		<style>
			table{
				border-collapse:collapse;
				border:1px solid #000000;
			}
			td{
				border:1px solid #000000;
				font-size:12px;
				padding:2px;
			}
			.title td{
				text-align:conter;
				background:#cccccc;
			}
			
		</style>
		
	</head>
	<body>
		<table>
			<tr class="title">
				<td>編號</td>
				<td>姓名</td>
				<td>地址</td>
				<td>年齡</td>
				<td>性別</td>
				<td>生日</td>
				<td>手機</td>
				<td>城市</td>
			</tr>
			
			<c:forEach items="${ personList }" var="person">
				<tr>
					<td>${ person.id }</td>
					<td>${ person.name }</td>
					<td>${ person.address }</td>
					<td>${ person.age }</td>
					<td>${ person.sex }</td>
					<td>${ person.birthday }</td>
					<td>${ person.mobile }</td>
					<td>${ person.city }</td>
				</tr>
			</c:forEach>
			
		</table>
		
		<hr>
		
		<table>
			<tr class="title">
				<td>編號</td>
				<td>姓名</td>
				<td>地址</td>
				<td>年齡</td>
				<td>性別</td>
				<td>生日</td>
				<td>手機</td>
				<td>城市</td>
			</tr>
			
			<c:forEach items="${ personList }" var="person" varStatus="varStatus">
				<tr bgcolor=${ varStatus.index%2==1? '#DDDDDD':'#FFFFFF' }>
					<td>${ varStatus.current.id }</td>
					<td>${ varStatus.current.name }</td>
					<td>${ varStatus.current.address }</td>
					<td>${ varStatus.current.age }</td>
					<td>${ varStatus.current.sex }</td>
					<td>${ varStatus.current.birthday }</td>
					<td>${ varStatus.current.mobile }</td>
					<td>${ varStatus.current.city }</td>
				</tr>
			</c:forEach>
			
		</table>
	</body>
</html>