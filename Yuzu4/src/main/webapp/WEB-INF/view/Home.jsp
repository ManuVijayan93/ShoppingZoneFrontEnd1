<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The Electronics Fountain</title>
</head>
<body>
	<h2>
		<center>Yuzu</center>
	</h2>
	<center>${msg}</center>
	<center>${successMessage}</center>
	<center>${errorMessage}</center>


	${loginMessage}
	<br>

	<hr>
	<jsp:include page="CategoryMenu.jsp"></jsp:include>
	<c:if test="${isAdmin==true}">
		<jsp:include page="Admin/AdminHome.jsp"></jsp:include>
	</c:if>
	<c:if test="${empty loginMessage}">
		<a href="login">Login</a>
		<br>

		<a href="register"> Register</a>

	</c:if>
	<c:if test="${not empty loginMessage}">
		<a href="logout">Logout</a>
	</c:if>
	<c:if test="${isAdmin==false}">
		<a href="myCart">My Carts</a>
	</c:if>
	<br>
	<br>
	<br>
	<br>
	<c:if test="${isUserClickedLogin==true}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:if>
	<%-- <c:if test="${isUserLoggedIn==false}">
		<a href="login">Login </a>
		<br>
		<a href="register">Register</a>
		<br>
	</c:if> --%>
	<c:if test="${isUserClickedRegister==true}">
		<jsp:include page="Register.jsp"></jsp:include>
	</c:if>
	<br>
	<c:if test="${not empty errorMessage}">
		<jsp:include page="Login.jsp"></jsp:include>
	</c:if>



	<br>

</body>
</html>