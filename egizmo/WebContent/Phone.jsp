<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<!--  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
<title>egizmo-Smartphone</title>
<link rel="stylesheet" href="Newmain.css" type="text/css" charset="utf-8">

</head>
<body>

<div id="header">
<div id="logo"><img src="image/logoN.jpg"></div>

<ul id ="menu">
<li><a href="HomePage.jsp">Home</a></li>
<li><a href="#sell">Sell</a></li>
<li><a href="#track">Track-Order</a></li>
<li><a href="signin.jsp">Sign In</a></li>
<li><a href="register.jsp">Register</a></li>
<li><a href="#cart">Cart</a></li>
</ul>

<input id="itemSearch" type="text" placeholder="search" align="middle" data-nav-tabindex="21" tabindex="1">
<input id="searchButton" type="submit" value="Search">
</div>
<!-- header ends here -->
<!-- horizontal border starts here -->
<div id ="Horizontal-border"></div>
<!-- categories starts here -->
<div id=categories>
<h2>Categories</h2>
<ul>
	<li><a href="smartphones.jsp">SmartPhones</a>
		    <ul>
		    <li><a href="#">iPhone</a></li>
		    <li><a href="#">Samsung</a></li>
		    </ul>
	</li>
	<li><a href="Computers.jsp">Computers</a>
		    <ul>
		    <li><a href="#">Apple</a></li>
		    <li><a href="#">Dell</a></li>
		    <li><a href="#">Lenovo</a></li>
		    <li><a href="#">Sony</a></li>
		    </ul>
	</li>
	<li><a href="gamingGadgets.jsp">Gaming Gadgets</a>
		    <ul>
		    <li><a href="#">XBox</a></li>
		    <li><a href="#">Playstation</a></li>
		    </ul>
	 </li>
	 
	 <li><a href="#">Home Appliance</a>
		    <ul>
		    <li><a href="#">XBox</a></li>
		    <li><a href="#">Playstation</a></li>
		    </ul>
	 </li>
	 
</ul>
</div>

<div id ="phones">
<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/eGizmo" user="root" password="" />

		<sql:query var="smartphones" dataSource="${myDS}">
        SELECT name,cost,shippingCost,imagePath FROM product where category="smartphones";
    </sql:query>
<table id= "phones"   cellpadding="5">
       
           <c:forEach var="prod" items="${smartphones.rows}">
					<tr>
						<td><img src=<c:out value="image/${prod.imagePath}"/> /></td>
						<td> <c:out value="${prod.name}" /> <br>Price:
						<c:out value="${prod.cost}" /> <br>Shipping Charges:
						<c:out value="${prod.shippingCost}" /><br></td>
						<td><form><input type="button" value="Add To Cart"></form></td>
						
					</tr>
				</c:forEach>       
</table>
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