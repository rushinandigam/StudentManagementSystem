package com.studentmanagementsystem.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mindrot.jbcrypt.BCrypt;

import com.studentmanagementsystem.services.DbConnections;


@WebServlet("/studentSignupServlet")
public class StudentSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public StudentSignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String signupQuery = "INSERT INTO STUDENTS ( register_number , name , mobile_number , address , email , password ) values (?,?,?,?,?,?)";
		
		try {
			String registerNumber = request.getParameter("registerNumber");
			String name = request.getParameter("name");
			String mobileNumber = request.getParameter("mobileNumber");
			String address = request.getParameter("address");
			String email = request.getParameter("email");
			String plainPassword = request.getParameter("password");
			String hashedPassword = BCrypt.hashpw(plainPassword , BCrypt.gensalt());
			System.out.println(registerNumber + "  " + name  + " " + mobileNumber + " " + address + " " + email + " " + plainPassword 
					+ " " + hashedPassword
					);	
			Connection connection = DbConnections.mysqlConnector();
			PreparedStatement preparedStatement = connection.prepareStatement(signupQuery);
			preparedStatement.setString(1, registerNumber);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, mobileNumber);
			preparedStatement.setString(4, address);
			preparedStatement.setString(5, email);
			preparedStatement.setString(6, hashedPassword);
			preparedStatement.execute();
			System.out.println("data inserted successfully");
			connection.close();
			response.sendRedirect("studentlogin");
			
		}
		catch(Exception e) {
	          e.printStackTrace();
			response.sendRedirect("errorpage");
		}
	}

}
