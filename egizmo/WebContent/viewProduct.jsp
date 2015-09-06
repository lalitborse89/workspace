<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> --%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!-- PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Products</title>
<link rel="stylesheet" href="Newmain.css" type="text/css"
	charset="utf-8" />
</head>
<body>
	<div id="headerRegister">
		<div id="logo">
			<img src="image/logoN.jpg">
		</div>
		<ul id="menu">
			<li><a href="DemoSeller.jsp">Seller Home</a></li>
			<li><a href="LogoutServlet">Logout</a></li>
			<li><a href="#">View Account</a></li>
			
		</ul>
	</div>
	<div id="horizBorder"></div>
	<div id="register">
		<form action="UpdateController" method="post">
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/eGizmo" user="root" password="" />

			<sql:query var="listProducts" dataSource="${myDS}">
        SELECT * FROM product;
    </sql:query>

			<div align="center">
				<table border="1" cellpadding="5">
					<caption>
						<h2>List of Products</h2>
					</caption>
					<tr>
						<th>Product ID</th>
						<th>Name</th>
						<th>Cost</th>
						<th>Shipping Cost</th>
						<th>Category</th>
						<th>Product Image</th>

					</tr>
					<c:forEach var="prod" items="${listProducts.rows}">
						<tr>
							<td><c:out value="${prod.productId}" /></td>
							<td><c:out value="${prod.name}" /></td>
							<td><c:out value="${prod.cost}" /></td>
							<td><c:out value="${prod.shippingCost}" /></td>
							<td><c:out value="${prod.category}" /></td>
							<td><c:out value="${prod.imagePath}" /></td>
						</tr>
					</c:forEach>
					<tr>
						<td>Product ID:</td>
						<td><input id="productId" type="text" name="productId"
							placeholder="Product Id" required></td>
						<td><input type="submit" value="Edit Product"></input></td>
					</tr>
				</table>
			</div>
		</form>
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
					<li><a href="#">Billing System</a></li>
					<li><a href="#">Ticket System</a></li>
				</ul>
			</div>
			<div id="AboutUs">

				<h3>AboutUs</h3>
				<ul="AboutUs" >
					<li><a href="#">Company Information</a></li>
					<li><a href="#">Careers</a></li>
					<li><a href="#">Store Location</a></li>
					<li><a href="#">Copyright</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>