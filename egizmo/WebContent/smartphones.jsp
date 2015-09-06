<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Phones</title>
<link rel="stylesheet" href="Newmain.css" type="text/css" charset="utf-8">
</head>
<body>
<!-- header starts here -->

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
<!-- categories ends here -->


<!-- smarphones subcategory starts here -->

<table id= "Smartphones">
<tr>
<td><img id="iph6" src="image/Appleiph.jpg"></td>
<td><a href="#">iPhone6</a>
<p>details here..<br>
Price:600$
Specifications: product specifications
</p></td>
</tr>
<tr>
<td><img id="SamsungS5" src="image/GS5.jpg"></td>
<td><a href="#">Samsung Galaxy S-5</a>
<p>details here..<br>
Price:400$
Specifications: product specifications
</p></td>
</tr>
<tr>
<td><img id="Nexus6" src="image/nexus6.jpg"></td>
<td><a href="#">Nexus-6</a>
<p>details here..<br>
Price:400$
Specifications: product specifications
</p></td>
</tr>
</table>

<!-- <div id="Smartphones">
<div id="iphone">
<img id="iph6" src="image/Appleiph.jpg">
<div id="divdeBorder"></div>
<a href="#">iPhone6</a>
<p>details here..<br>
Price:600$
Specifications: product specifications
</p>
</div>
<div id="SamsungS5">
<img id="iph6" src="image/GS5.jpg">
<a href="#">Samsung Galaxy S-5</a>
<p>details here..<br>
Price:400$
Specifications: product specifications
</p>
</div>
<div id="Nexus6">
<img id="iph6" src="image/nexus6.jpg">
<a href="#">Nexus 6</a>
<p>details here..<br>
Price:400$
Specifications: product specifications
</p>
</div>


</div> -->


<!-- smarphones subcategory ends here -->

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