<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>eGizmo-GamingGadgets</title>
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
<!-- horizontal border ends here -->

<!-- categories starts here -->

<div id=categories>
<h2>Categories</h2>
<ul>
	<li><a href="Smartphones.jsp">SmartPhones</a>
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
<!-- categories ends here -->


<!-- gaming subcategory starts here -->

<table id= "gamingGadgets">
<tr>
<td><img id="Ps4" src="image/PS4_1.png"></td>
<td><a href="#">PS4</a>
<p>details here..<br>
Price:300$
Specifications: product specifications
</p></td>
</tr>
<tr>
<td><img id="xbox1" src="image/xbox1.jpg"></td>
<td><a href="#">XBox One</a>
<p>details here..<br>
Price:400$
Specifications: product specifications
</p></td>

</table>



<!-- gaming subcategory ends here -->

<div id ="horizontalBorderFooter"></div>

<!--footer starts here-->
<div id ="footer">
<div id ="footerlogo"><img src="image/logoN.jpg"></div>
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

</ul>
</div>
<div id="AboutUs" >

<h3>AboutUs</h3>
<ul="AboutUs" >
<li><a href="#">Company Information</a></li>
<li><a href="#">Careers</a></li>
<li><a href="#">Store Location</a></li>
<li><a href="#">Copyright</a></li>
</ul>
</div>
</div>

<!--footer ends here-->



</body>
</html>