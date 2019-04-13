<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body bgcolor="orange">
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<li><a href="${contextPath}/registerPage"><i class="fa fa-user-plus"></i> Register User</a></li>
<li><a href="${contextPath}/login" class="text-uppercase">Login</a> </li>
</body>
</html>
