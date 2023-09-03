<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String Pid = request.getParameter("Pid");
	int no = Integer.parseInt(Pid);
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root","MySQL@NG.(***)");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from payments where Pid ='" +Pid+"'");
	response.sendRedirect("Payment_Table.jsp");
	%>