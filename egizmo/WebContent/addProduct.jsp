<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
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
		<form action='ProductController' method='post'>
			<fieldset id="form">
				<legend>
					<font color="orange"><strong>Add Product</strong></font>
				</legend>
				<table>
					<tr>
						<td>Product Name:</td>
						<td><input id="name" type="text" name="name"
							placeholder="Product Name"></td>
					</tr>
					<tr>
						<td>Cost:</td>
						<td><input id="cost" type="text" name="cost"
							placeholder="Product Cost"></td>
					</tr>
					<tr>
						<td>Shipping Cost:</td>
						<td><input id="shippingCost" type="text" name="shippingCost"
							placeholder="Shipping Cost"></td>
					</tr>
					<tr>
						<td>Category:</td>
						<td><select name="category">
								<option value="smartphones" selected="selected">SmartPhones</option>
								<option value="computers">Computers</option>
								<option value="gaming">Gaming Gadgets</option>
								<option value="homeappliance">Home Appliance</option>
						</select></td>
					</tr>


					<tr>
						<td>Upload Product Image:</td>
						<td><input type="file" id="imagePath" name="imagePath"><br />
						<br /></td>
					</tr>
					<tr>
					<tr>
						<td><input id="addProduct" type="submit" name="createaccount"
							value="Add Product"></td>
						<td><input id="reset" type="reset" name="reset" value="Reset"></td>
					</tr>
				</table>
			</fieldset>
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
					<li><a href="#">Privecy Policy</a></li>
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