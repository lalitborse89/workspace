<!DOCTYPE html>
<html>
<head>
<title>Seller Home</title>
<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans);

/* set global font to Open Sans */
body {
  font-family: 'Open Sans', 'sans-serif';
  background-image: url(http://benague.ca/files/pw_pattern.png);
}

/* header */
h1 {
  color: #55acee;
  text-align: center;
}

/* header/copyright link */
.link {
  text-decoration: none;
  color: #55acee;
  border-bottom: 2px dotted #55acee;
  transition: .3s;
  -webkit-transition: .3s;
  -moz-transition: .3s;
  -o-transition: .3s;
  cursor: url(http://cur.cursors-4u.net/symbols/sym-1/sym46.cur), auto;
}

.link:hover {
  color: #2ecc71;
  border-bottom: 2px dotted #2ecc71;
}

/* button div */
#buttons {
  
  text-align: center;
}

/* start da css for da buttons */
.btn {
  border-radius: 5px;
  padding: 15px 25px;
  font-size: 22px;
  text-decoration: none;
  margin: 20px;
  color: #fff;
  position: relative;
  display: inline-block;
}

.btn:active {
  transform: translate(0px, 5px);
  -webkit-transform: translate(0px, 5px);
  box-shadow: 0px 1px 0px 0px;
}

.orange {
  background-color: #e67e22;
  box-shadow: 0px 5px 0px 0px #CD6509;
}

.orange:hover {
  background-color: #FF983C;


/* copyright stuffs.. */
p {
  text-align: center;
  color: #55acee;
  padding-top: 20px;
}

</style>
</head>

<body>
   <% String name = (String)request.getAttribute("userName");
   
%>
<h3>Hello <%=name%> </h3>

<div id="buttons">
   <img src="image/logoN.jpg">
  <a href="#" class="btn orange">Home</a>
  <a href="#" class="btn orange">View Account</a>
  <a href="LogoutServlet" class="btn orange">Logout</a>
</div>

<div id="catagories"> 
<a href="addProduct.jsp" target="center">Add Products</a><br><hr>
<a href="viewProduct.jsp" target="center" >List/Edit Products</a><br><hr>
<a href="#" target="center" >Delete Products</a><br><hr>
<a href="#" target="center" >View Orders</a><br><hr>
<a href="#" target="center" >Contact Buyers</a><br><hr>
<a href="#" target="center" >Update Shipping Details</a><br><hr>
<a href="#" target="center" >View Account</a><br><hr>
</div>


</body>


</html>