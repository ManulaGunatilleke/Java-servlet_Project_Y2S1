<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Pid = request.getParameter("Pid");
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
try {
	connection = DriverManager.getConnection(connectionUrl + database, userid, password);
	statement = connection.createStatement();
	String sql = "select * from payments where Pid=" + Pid;
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>
<html>
<head>
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
		<li><a href="Payment_Create.jsp">Payment Create</a></li>
		<li><a href="Payment_Table.jsp">Payment Details</a></li>
	</ul>
	<br>
	<h2>Payment Update</h2>


	<div class="container">
		<form action="Payment_UpdateProcess.jsp" method="post">
			<div class="row">
				<div class="col-25">
					<label for="fname">Payment ID</label>
				</div>
				<div class="col-75">
					<input type="text" name="Pid" readonly id="Pid"
						value="<%=resultSet.getInt("Pid")%>">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="fname">Order No</label>
				</div>
				<div class="col-75">
					<input type="text" name="orNO" id="orNO"
						value="<%=resultSet.getString("orNO")%>">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="lname">Payment Method</label>
				</div>
				<div class="col-75">
					<select id="pMethod" name="pMethod">
						<option value="Cash"
							selected="<%=resultSet.getString("pMethod").equals("Cash")%>">Cash</option>
						<option value="Card"
							selected="<%=resultSet.getString("pMethod").equals("Cash")%>">Card</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="lname">Date</label>
				</div>
				<div class="col-75">
					<input type="date" id="pDate" name="pDate"
						value="<%=resultSet.getString("pDate")%>">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="lname">Amount</label>
				</div>
				<div class="col-75">
					<input type="number" name="Price" id="Price"
						value="<%=resultSet.getString("Price")%>">
				</div>
			</div>

			<br> <br> <br>
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
