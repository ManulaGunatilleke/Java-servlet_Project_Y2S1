<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/cart";%>
<%!String user = "root";%>
<%!String psw = "MySQL@NG.(***)";%>
<%
String Pid = request.getParameter("Pid");
String orNO =request.getParameter("orNO");
String pMethod =request.getParameter("pMethod");
String pDate=request.getParameter("pDate");
String Price=request.getParameter("Price");


if(Pid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Pid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update payments set Pid=?,orNO=?,pMethod=?,pDate=?,Price=? where Pid="+personID;
ps = con.prepareStatement(sql);
ps.setInt(1, personID);
ps.setString(2,orNO);
ps.setString(3,pMethod);
ps.setString(4,pDate);
ps.setString(5,Price);

int i = ps.executeUpdate();
if(i > 0)
{
	

RequestDispatcher rd = request.getRequestDispatcher("Payment_Table.jsp");
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