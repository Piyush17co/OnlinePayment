package com.Util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {
    public static Connection createconnection() {
    	System.out.println("connection call");
    	Connection cn = null;
    	try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/payment","root","");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return cn;
    }
}
