<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
//create the connection
String orNo = request.getParameter("orNo");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "cart";
String userid = "root";
String password = "MySQL@NG.(***)";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from orders where orNo="+orNo;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<html>
<head>
<title>Order</title>
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
  <li><a href="Payment_Create.jsp">Payment Create</a></li>
  <li><a href="Payment_Table.jsp">Payment Details</a></li>
  </ul>
  <br>
<h2>Order Update</h2>


<div class="container">
  <form action="Order_UpdateProcess.jsp" method="post">
  <div class="row">
    <div class="col-25">
      <label for="fname">Order ID</label>
    </div>
    <div class="col-75">
      <input type="text" name="orNo"  readonly id="orNo" value="<%=resultSet.getInt("orNo") %>">
    </div>
  </div>
    <div class="row">
    <div class="col-25">
      <label for="fname">Customer Name</label>
    </div>
    <div class="col-75">
      <input type="text" name="cName"  id="cName" value="<%=resultSet.getString("cName") %>">
    </div>
  </div>
    <div class="row">
    <div class="col-25">
      <label for="fname">Address</label>
    </div>
    <div class="col-75">
      <input type="text" name="oAddress"  id="oAddress" value="<%=resultSet.getString("oAddress") %>">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Date</label>
    </div>
    <div class="col-75">
      <input type="date" id="oDate" name="oDate"  value="<%=resultSet.getString("oDate") %>">
    </div>
  </div>
<div class="row">
    <div class="col-25">
      <label for="lname">Phone NO</label>
    </div>
    <div class="col-75">
      <input type="number"  name="PhoneNO" id="PhoneNO" value="<%=resultSet.getString("PhoneNO") %>">
    </div>
  </div>
  
<br>
<br>
<br>
  <div class="row">
    <input type="submit" value="Submit">
  </div>
  </form>
<% 
 }
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 
</div>

</body>
</html>
