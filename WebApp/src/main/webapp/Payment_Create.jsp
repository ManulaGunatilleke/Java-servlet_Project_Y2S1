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

<title>Payment</title>
<link rel="stylesheet" href="CSS/form.css">
<link rel="stylesheet" href="CSS/navi.css">
</head>
<body>
<ul>
  <li><a href="Index.jsp">Home</a></li>
  <li><a href="#">Customer Create</a></li>
  <li><a href="#">Customer Details</a></li>
  <li><a href="Order_Create.jsp">Order Create</a></li>
  <li><a href="Order_Table.jsp">Order Details</a></li>
  <li><a class="active" href="Payment_Create.jsp">Payment Create</a></li>
  <li><a href="Payment_Table.jsp">Payment Details</a></li>
  </ul>
  <br>

<h1>Payment Create</h1>


<div class="container">
  <form action="PaymentServlet" method="post">
  <div class="row">
    <div class="col-25">
      <label for="fname">Order No</label>
    </div>
    <div class="col-75">
      <input type="text" id="orNO" name="orNO"  required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Payment Method</label>
    </div>
      <div class="col-75">
      <select id="pMethod" name="pMethod">
        <option value="Cash">Cash</option>
        <option value="Card">Card</option>
      </select>
    </div>
   </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Date</label>
    </div>
    <div class="col-75">
      <input type="date" id="pDate" name="pDate"  required>
    </div>
  </div>
<div class="row">
    <div class="col-25">
      <label for="lname">Price</label>
    </div>
    <div class="col-75">
      <input type="number" id="Price" name="Price"  required>
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