<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
        
<!DOCTYPE html>
<html>
<head>
<title>Payment</title>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <meta name="description" content="">
    <meta name="author" content="templatemo">

    <link href="CSS/table.css" rel="stylesheet">
    <link rel="stylesheet" href="CSS/navi.css">
 <style>
h1 {
  text-align: center;
  padding: 10px;
  font-size: 60px;
  text-transform: uppercase;
  color: #000040;
}
.button1 {
  background-color: #008b8b;
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin: 4px 2px;
  cursor: pointer;
}
.button2 {
  background-color: #ff0000;
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin: 4px 2px;
  cursor: pointer;
}
 </style>   
<title>Payment Details</title>
</head>
<body>
<ul>
  <li><a href="Index.jsp">Home</a></li>
  <li><a href="#">Customer Create</a></li>
  <li><a href="#">Customer Details</a></li>
  <li><a href="Order_Create.jsp">Order Create</a></li>
  <li><a href="Order_Table.jsp">Order Details</a></li>
  <li><a href="Payment_Create.jsp">Payment Create</a></li>
  <li><a class="active" href="Payment_Table.jsp">Payment Details</a></li>
  </ul>
  <br> 
  
<h1>Payment Details</h1>


        
<div class="">
			  <center>
							
							<table id="customers" class="content-table">
								 
								 <thead>
								 <th>ID</th>
								 <th>Order No</th>
								 <th>Payment Method</th>
								  <th>Date</th>
								   <th>Price</th>
								   
								  
									<th>Update</th>
									
									 <th>Delete</th>
								 </thead>
				  
				  
				 <%			  
				 try {
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from payments";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
				  <tbody>
				  
				  <tr>
				  <td><%=resultSet.getInt("Pid") %></td>
				  <td><%=resultSet.getString("orNO") %></td>
				  <td><%=resultSet.getString("pMethod") %></td>
				  <td><%=resultSet.getString("pDate") %></td>
				  <td><%=resultSet.getString("Price") %></td>
				  
				  
				   <td><a href="Payment_Update.jsp?Pid=<%=resultSet.getInt("Pid") %>"><button class="button1" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="fas fa-trash-alt"></span></button></p></a></td>			 
				  <td><a href="Payment_Delete.jsp?Pid=<%=resultSet.getInt("Pid") %>"><button class="button2" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="fas fa-trash-alt"></span></button></p></a></td>
				  
				  </tr>
				  
				  <%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
				  
				  </tbody>
					  
			  </table>
			</center>			
		</div>
</div>
</div>
</div>
</div>
</body>
</html>