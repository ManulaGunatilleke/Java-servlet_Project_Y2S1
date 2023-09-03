package com.order;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Import Database Connection Class file 
import com.connectors.DBconnecter; 

@WebServlet("/OrderServlet") 
public class OrderServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
	//get the data where inserted in Order_Create.jsp 
		String cName = request.getParameter("cName");		
		String oAddress = request.getParameter("oAddress");
		String oDate = request.getParameter("oDate");	
		String PhoneNO = request.getParameter("PhoneNO");
		
		
		 Connection conn = null;
		    
		    try {
		    	//insert data to the database 
		    	String sql = "insert into orders"+"(cName,oAddress,oDate,PhoneNO) values"+"(?,?,?,?)";
		    	Class.forName("com.mysql.jdbc.Driver");
			     conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root","MySQL@NG.(***)");
			    PreparedStatement st = conn.prepareStatement(sql);
			   

			    st.setString(1, cName);
			    st.setString(2, oAddress);			    
			    st.setString(3, oDate);			    
			    st.setString(4, PhoneNO);			    

			     int row = st.executeUpdate();
			     
			    System.out.println("db connected!!");

		        if (row > 0) {
		          System.out.println("File uploaded and saved into database");
		          
		          
					PrintWriter out = response.getWriter(); 

					
		          
		          RequestDispatcher rd = request.getRequestDispatcher("Order_Table.jsp");
		          
		          rd.include(request, response);
		        }
		       
		    }catch (Exception e) {
				e.printStackTrace();

      } 		
	} 	
} 