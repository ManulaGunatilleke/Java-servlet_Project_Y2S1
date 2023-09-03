<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String orNo = request.getParameter("orNo");
	int no = Integer.parseInt(orNo);
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root","MySQL@NG.(***)");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from orders where orNo ='" +orNo+"'");
	response.sendRedirect("Order_Table.jsp");
	%>