<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<!--  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
<title>Seller Home</title>
<link rel="stylesheet" href="Newmain.css" type="text/css"
	charset="utf-8">

</head>
<body>
	<%
		String name = (String) request.getAttribute("userName");
	%>

	<div id="header">
		<div id="logo">
			<img src="image/logoN.jpg">
		</div>

		<ul id="menu">
			<li>Hello ,<b><font color="blue" size="5">fahad</font></b></li>
			<li><a href="#">View Account</a></li>
			<li><a href="LogoutServlet">Logout</a></li>

		</ul>

		 <input id="itemSearch" type="text" placeholder="search" align="middle"
			data-nav-tabindex="21" tabindex="1"> <input id="searchButton"
			type="submit" value="Search"> 
	</div>
	<!-- header ends here -->
	<!-- horizontal border starts here -->
	<div id="Horizontal-border"></div>
	<!-- categories starts here -->
	
	<div id=categories>
		<h2>Features</h2>
		<ul>
			<li><a href="addProduct.jsp">Add Product</a></li>

			<li><a href="viewProduct.jsp">List/Edit Products</a></li>
			<li><a href="#">Delete Products</a></li>
			<li><a href="#">View Orders</a></li>
			<li><a href="#">Contact Buyers</a></li>
			<li><a href="#">Update Shipping Details</a></li>
			<li><a href="#">View Account</a></li>
		</ul>
	</div>


	<div id="phones">
		<br>
		<br> <br>
		<br> <br> <br>
		<br> <br> <br>
		<br>
		<br> <br>
		<br> <br> <br>
		<br>

	</div>

	<div id="horizontalBorderFooter"></div>

	<!--footer starts here-->
	<div id="footer">
		<div id="footerlogo">
			<img src="image/logoN.jpg">
		</div>
		<div id="services">
			<h3>Services</h3>
			<ul>
				<li><a href="#">Online Help</a></li>
				<li><a href="#">Contact Us</a></li>
				<li><a href="#">Order Status</a></li>
				<li><a href="#">FAQ's</a></li>
			</ul>
		</div>
		<div id="Policies">
			<h3>Policies</h3>
			<ul="Policies" >
				<li><a href="#">Terms of Use</a></li>
				<li><a href="#">Privacy Policy</a></li>
				<li><a href="#">Refund Policy</a></li>

			</ul>
		</div>
		<div id="AboutUs">

			<h3>AboutUs</h3>
			<ul="AboutUs" >
				<li><a href="#">Company Information</a></li>
				<li><a href="#">Store Location</a></li>
				<li><a href="#">Copyright</a></li>
			</ul>
		</div>
	</div>


	</div>

</body>
</html>