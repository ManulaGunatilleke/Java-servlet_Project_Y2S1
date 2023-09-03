<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<style>
h1 {
  text-align: center;
  padding: 10px;
  font-size: 60px;
  text-transform: uppercase;
  color: #000040;
}
</style>

<title>Order</title>
<link rel="stylesheet" href="CSS/form.css">
<link rel="stylesheet" href="CSS/navi.css">
</head>
<body>
<ul>
  <li><a href="Index.jsp">Home</a></li>
  <li><a href="#">Customer Create</a></li>
  <li><a href="#">Customer Details</a></li>
  <li><a class="active" href="Order_Create.jsp">Order Create</a></li>
  <li><a href="Order_Table.jsp">Order Details</a></li>
  <li><a href="Payment_Create.jsp">Payment Create</a></li>
  <li><a href="Payment_Table.jsp">Payment Details</a></li>
  </ul>
  <br>

<h1>Order Create</h1>


<div class="container">
  <form action="OrderServlet" method="post">
  <div class="row">
    <div class="col-25">
      <label for="fname">Customer Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="cName" name="cName"  required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="fname">Address</label>
    </div>
    <div class="col-75">
      <input type="text" id="oAddress" name="oAddress"  required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Date</label>
    </div>
    <div class="col-75">
      <input type="date" id="oDate" name="oDate"  required>
    </div>
  </div>
<div class="row">
    <div class="col-25">
      <label for="lname">Phone No</label>
    </div>
    <div class="col-75">
      <input type="number" id="PhoneNO" name="PhoneNO"  required>
    </div>
  </div>
  
<br>
<br>
<br>
  <div class="row">
    <input type="submit" value="Submit">
  </div>
  </form>
</div>

</body>
</html>