<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h2 align="center">Farmer Welcome Login Page</h2>
			<hr color="pink" size="3" />
<!-- <c:url var="travelLink" value="/travel/travelForm">-->
	<c:param name="farmer_id" value="${usr.id}" />
<!-- </c:url>-->

<!--  <c:url var="leaveLink" value="/leave/leaaveForm">-->
	<c:param name="farmer_id" value="${usr.farmer_id}" />
<!--</c:url>-->

<div style="color: red" align="center">
Welcome  Farmer ID: ${farm.farmer_id} User: ${farm.email_id} </div>

<a href="${travelLink}">Travel</a><br><br>
<a href="${leaveLink}">Apply Leave</a>

</body>
</html>