<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Item added Success</title>
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
					<!-- banner -->				
<!-- 						<img src="./img/banner01.jpg" height="500" width="867" alt=""> -->
				
				<!-- /home slick -->
			</div>
			<!-- /home wrap -->
		
		<!-- /container -->
	</div>
	<!-- /HOME -->

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
      <legend>Item Added Successfully</legend>
   
      <table class="table">
			
			<tr>
				<td> <img class="group list-group-image" src="${item.imageSrc}" alt="" style="zoom: 30%;" /></td>				
			</tr>
<tr>
				<td>Brand:</td>
				<td><p  class="span3">${item.itemBrand}</p>
					</td>
			</tr>
			
			<tr>
				<td>Model No:</td>
				<td><p  class="span3">${item.modelNum}</p>
			</tr>


			<tr>
				<td>Make Year:</td>
				<td><p  class="span3">${item.makeYear}</p>
			</tr>
			
			
			

			<tr>
				<td>Price:</td>
				<td><p  class="span3">${item.price}</p>
			</tr>

			<tr>
				<td>Description:</td>
				<td><p  class="span3">${item.description}</p>
			</tr>

		</table>
   
</div>
</div></div></div></div>
	</div>
 
</body>
</html>