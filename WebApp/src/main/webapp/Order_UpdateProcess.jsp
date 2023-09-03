<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/cart";%>
<%!String user = "root";%>
<%!String psw = "MySQL@NG.(***)";%>
<%
String orNo = request.getParameter("orNo");
String cName =request.getParameter("cName");
String oAddress =request.getParameter("oAddress");
String oDate=request.getParameter("oDate");
String PhoneNO=request.getParameter("PhoneNO");


if(orNo != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(orNo);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update orders set orNo=?,cName=?,oAddress=?,oDate=?,PhoneNO=? where orNo="+personID;
ps = con.prepareStatement(sql);
ps.setInt(1, personID);
ps.setString(2,cName);
ps.setString(3,oAddress);
ps.setString(4,oDate);
ps.setString(5,PhoneNO);

int i = ps.executeUpdate();
if(i > 0)
{
	

RequestDispatcher rd = request.getRequestDispatcher("Order_Table.jsp");
rd.include(request, response);
}
else
{
out.print("There is a problem in updating Record.");

}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%> 