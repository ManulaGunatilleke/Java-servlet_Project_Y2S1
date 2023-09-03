package com.customer;

public class Customer {
	
	    private String username;
	    private String password;
	    private int userid;
	    
	    public Customer(String username, String password, int userid) {
	        this.username = username;
	        this.password = password;
	        this.userid = userid;
	    }

	    public Customer() {
	    	
	    }

		public String getUsername() {
			return username;
		}


		public String getPassword() {
			return password;
		}

		

		public int getUserid() {
			return userid;
		}

		
	   

	    
}
