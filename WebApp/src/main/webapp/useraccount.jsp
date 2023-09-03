<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="cus" items = "${cusDetails}">
	 
	<tr>
		<td>Customer ID</td>
		<td>${cus.userid}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${cus.username}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.password}</td>
	</tr>
	
	</c:forEach>

</body>
</html>