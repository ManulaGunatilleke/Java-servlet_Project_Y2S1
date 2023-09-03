package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class CustomerDBUtill {
	
	public static List<Customer> Validate(String userName , String password){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		//Create DataBase Connect
		
		String url = "jdbc:mysql://localhost:3306/btreservation";
		String user = "root";
		String pass = "MySQL@NG.(***)";
		
	 	//Validate 
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from customer where username= '"+userName+"' and password = '"+password+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int userid = rs.getInt(1);
				String name = rs.getString(2);
				String Password = rs.getString(3);
				
				Customer c = new Customer(name,Password,userid);
				cus.add(c);
				
				
			}
	        
			
		}catch(Exception e){
			e.printStackTrace();			
		}
		
		return cus;
		
		
	}


}
