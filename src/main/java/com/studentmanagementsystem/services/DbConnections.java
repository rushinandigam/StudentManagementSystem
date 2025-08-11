package com.studentmanagementsystem.services;
import java.sql.*;

public class DbConnections {
	public static Statement statementConnector() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management_system" , "root" , "1811");
			Statement statement = connection.createStatement();
			System.out.println("Database connected successfully..");
			return statement;
		}
		catch(Exception e) {
			System.out.println("Error : " + e.toString());
		}
		return null;
	}
	
	public static Connection mysqlConnector() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management_system" , "root" , "1811");
			return connection;
		}
		catch(Exception e ) {
			System.out.println("Error : " + e.toString());
		}
		return null;
	}
}
