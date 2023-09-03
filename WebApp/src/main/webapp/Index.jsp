<!DOCTYPE html>
<html>
<%@include file="header.jsp" %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS/navi.css">

<style>
h1 {
  text-align: center;
  padding: 10px;
  font-size: 50px;
  text-transform: uppercase;
  color: #000040;
}
h2 {
  text-align: center;
  padding: 10px;
  font-size: 30px;
  text-transform: uppercase;
  color: #008000;
}

</style>

<body>

<!-- Navigation -->
<ul>
  <li><a class="active"  href="Index.jsp">Home</a></li>
  <li><a href="signup.jsp">Customer</a></li>
  <li><a href="Order_Create.jsp">Order</a></li>
  <li><a href="Payment_Create.jsp">Payment</a></li>
  <li><a href="login.jsp">Login</a></li>
  </ul>


  <h1>OrderME</h1>
  <h2> Looks so Good on the Outside, It'll Make You Feel Good Inside.</h2>


<!-- Slide Show -->
<section>
  <img class="mySlides" src="pictures/1.jpg"
  style="width:100%">
  <img class="mySlides" src="pictures/2.jpg"
  style="width:100%">
</section>

<script>
// Automatic Slideshow - change image every 3 seconds
var myIndex = 0;
carousel(); 

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 3000);
}
</script>
<%@include file="HomeProducts.html" %>



</body>
</html>

