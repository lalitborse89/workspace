<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seller Page</title>
<link rel="stylesheet" href="Newmain.css" type="text/css" charset="utf-8" />
<link rel="stylesheet" href="js-image-slider.css" type="text/css" charset="utf-8" />
</head>
<body>
<div id="header">
<div id="logo"><img src="image/logoN.jpg"></div>

<ul id ="menu">
<li><a href="HomePage.jsp">Home</a></li>
<li><a href="seller.jsp">Sell</a></li>
<li><a href="#track">Track-Order</a></li>
<li><a href="signin.jsp">Sign In</a></li>
<li><a href="register.jsp">Register</a></li>
<li><a href="#cart">Cart</a></li>
</ul>

<input id="itemSearch" type="text" placeholder="search" align="middle" data-nav-tabindex="21" tabindex="1">
<input id="searchButton" type="submit" value="Search">
</div>
<!-- horizontal border starts here -->
<div id ="Horizontal-border"></div>
<!-- horizontal border ends here -->

<!-- slider starts here -->

        <div id="slider">                
            <img src="image/iPhone-6N.png" alt="" />
            <img src="image/ipad.jpg" alt="" />
            <img src="image/white-playstation-4.jpg" alt="" />
            <img src="image/macbookair.png" alt="" />
        </div>
<!-- slider ends here -->

<!-- categories starts here -->
<div id=categories>
<h2>Categories</h2>
<ul>
	<li><a href="addProduct.jsp">Add Product</a>
		   <!--  <ul>
		    <li><a href="#">iPhone</a></li>
		    <li><a href="#">Samsung</a></li>
		    </ul> -->
	</li>
	<li><a href="viewProduct.jsp">View Product</a>
		  <!--   <ul>
		    <li><a href="#">Apple</a></li>
		    <li><a href="#">Dell</a></li>
		    <li><a href="#">Lenovo</a></li>
		    <li><a href="#">Sony</a></li>
		    </ul> -->
	</li>
	<li><a href="editProduct.jsp">Edit Product</a>
		  <!--   <ul>
		    <li><a href="#">XBox</a></li>
		    <li><a href="#">Playstation</a></li>
		    </ul> -->
	 </li>
	 
	 <li><a href="#">View Orders</a>
		  <!--   <ul>
		    <li><a href="#">XBox</a></li>
		    <li><a href="#">Playstation</a></li>
		    </ul> -->
	 </li>
	 
</ul>

</div>

<!-- categories ends here -->

<div id="vertical-line"></div>

<!-- home-section starts here -->

<div id="homesection">
<div id="1row1col" style="float:left">
<h3><a href="#">SmartPhones</a></h3>
<img src="image/Appleiph.jpg">
</div>
<div id="dividerline"></div>
<div id="1row2col" style="float:left">
<h3><a href="#">Computers</a></h3>
<img src="image/mac.jpg">
</div>
<div id="dividerline"></div>
<div id="2row1col" style="float:left">
<h3><a href="#">Gaming Gadgets</a></h3>
<img src="image/xbox1.jpg">
</div>
<div id="dividerline"style="float:left"></div>
<div id="2row2col">
<h3><a href="#">Home Appliances</a></h3>
<img src="image/tv1.jpg">
</div>

</div>
<!-- home-section ends here -->

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
<script src="js-image-slider.js"></script>
</html>