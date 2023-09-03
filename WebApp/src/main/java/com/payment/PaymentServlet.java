package com.payment;

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

@WebServlet("/PaymentServlet") 
public class PaymentServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
	
		String orNO = request.getParameter("orNO");		
		String pMethod = request.getParameter("pMethod");
		String pDate = request.getParameter("pDate");	
		String Price = request.getParameter("Price");
		
		
		 Connection conn = null;
		    
		    try {
		    	
		    	String sql = "insert into payments(orNO,pMethod,pDate,Price) values(?,?,?,?)";
		    	Class.forName("com.mysql.jdbc.Driver");
			    conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/cart","root","MySQL@NG.(***)");
			    PreparedStatement st = conn.prepareStatement(sql);
			   

			    st.setString(1, orNO);
			    st.setString(2, pMethod);			    
			    st.setString(3, pDate);			    
			    st.setString(4, Price);			    

			     int row = st.executeUpdate();
			     
			    System.out.println("db connected!!");

		        if (row > 0) {
		          System.out.println("File uploaded and saved into database");
		          
		          
					PrintWriter out = response.getWriter(); 

					
		          
		          RequestDispatcher rd = request.getRequestDispatcher("Payment_Table.jsp");
		          
		          rd.include(request, response);
		        }
		       
		    }catch (Exception e) {
				e.printStackTrace();

      } 		
	} 	
} 