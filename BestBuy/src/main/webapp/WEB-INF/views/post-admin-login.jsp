<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="orange">
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<h1>Welcome to the admin Panel</h1>
<li><a href="${contextPath}/addnewitem"><i class="fa fa-user-plus"></i> Add New Item</a></li>
<li><a href="${contextPath}/deleteitem"><i class="fa fa-user-plus"></i> Delete Item</a></li>
<li><a href="${contextPath}/updateitem"><i class="fa fa-user-plus"></i> Update Item</a></li>
</body>
</html>