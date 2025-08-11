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

@WebServlet("/adminSignupServlet")
public class AdminSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminSignupServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String signupQuery = "INSERT INTO ADMIN ( admin_id , name , mobile_number , job_role , email , password ) values (?,?,?,?,?,?)";

		try {
			String adminId = request.getParameter("adminId");
			String name = request.getParameter("name");
			String mobileNumber = request.getParameter("mobileNumber");
			String jobRole = request.getParameter("jobRole");
			String email = request.getParameter("email");
			String plainPassword = request.getParameter("password");
			String hashedPassword = BCrypt.hashpw(plainPassword, BCrypt.gensalt());
			System.out.println(
					adminId + "  " + name + " " + mobileNumber + " " + jobRole + " " + email + " " + plainPassword
							+ " " + hashedPassword);
			Connection connection = DbConnections.mysqlConnector();
			PreparedStatement preparedStatement = connection.prepareStatement(signupQuery);
			preparedStatement.setString(1, adminId);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, mobileNumber);
			preparedStatement.setString(4, jobRole);
			preparedStatement.setString(5, email);
			preparedStatement.setString(6, hashedPassword);
			preparedStatement.execute();
			System.out.println("data inserted successfully");
			connection.close();
			response.sendRedirect("adminlogin");

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("errorpage");
		}
	}

}
