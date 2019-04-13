<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

th, td {
    padding: 10px !important;
}
</style>
<title>Add New Item</title>
</head>
<body bgcolor="orange">
 
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />

	 
		<!-- container --><div class="section">
		<div class="container">
			<!-- home wrap -->
		
				<!-- home slick -->
				<br/>
				<div id="responsive-nav">
				<!-- category nav -->
				<div class="category-nav">
					<span class="category-header">ADMIN ACTIONS <i class="fa fa-list"></i></span>
					<ul class="category-list">						
						<li><a href="${contextPath}/addnewitem">ADD NEW ITEM</a></li>						
						<li><a href="#">VIEW ITEM LIST</a></li>
						<li><a href="#">VIEW USERS</a></li>
						<li><a href="#">ORDERS</a></li>
<!-- 						<li><a href="#"></a></li> -->
					</ul>
				</div>
 	
	</div>
	<!-- /HOME -->

	<!-- section -->
	  <div id="home">
		<!-- container -->
		<div class="container">
			<!-- home wrap -->
			<div class="home-wrap">
				<!-- home slick -->
				<div id="home-slick">
	
		<!-- container -->
<!-- 		<div class="container"> -->
		<div class="col-md-4 col-sm-6">
						<div class="span3 well">
      <legend>Add New Item</legend>
    <form:form accept-charset="UTF-8" action="${contextPath}/addnewitem" commandName="item"
		method="post">		
      <table>
			<tr>
				<td>Brand:</td>
				<td><form:input  class="span3"  path="itemBrand" size="30" required="required" />
					<font color="red"><form:errors path="itemBrand" /></font></td>
			</tr>
			
			<tr>
				<td>Add Image URL:</td>
				<td><form:input  class="span3" path="imageSrc" size="30" required="required" /><font color="red"><form:errors path="imageSrc" /></font></td>
			</tr>

			<tr>
				<td>Model No:</td>
				<td><form:input  class="span3"  path="modelNum" size="30" required="required" />
					<font color="red"><form:errors path="modelNum" /></font></td>
			</tr>


			<tr>
				<td>Make Year:</td>
				<td><form:input  class="span3"  path="makeYear" size="30" required="required" />
					<font color="red"><form:errors path="makeYear" /></font></td>
			</tr>
			
			
			

			<tr>
				<td>Price:</td>
				<td><form:input  class="span3"  path="price" size="30"
						required="required" /> <font color="red"><form:errors
							path="price" /></font></td>
			</tr>

			<tr>
				<td>Description:</td>
				<td><form:input  class="span3"  path="description" size="30"
						 required="required" /> <font color="red"><form:errors
							path="description" /></font></td>
			</tr>

			<tr>
			<td colspan="2"> <button class="btn btn-warning" type="submit">Add Item</button></td>
				
			</tr>
		</table>
    </form:form>
</div>
</div></div></div></div>
</div>
	
	
</body>
</html>