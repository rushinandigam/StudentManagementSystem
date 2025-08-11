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

@WebServlet("/facultySignupServlet")
public class FacultySignup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FacultySignup() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String signupQuery = "INSERT INTO FACULTY ( faculty_id , name , mobile_number , department , designation , qualification , experience , email , password ) values (?,?,?,?,?,?,?,?,?)";

		try {
			String facultyId = request.getParameter("facultyId");
			String name = request.getParameter("name");
			String mobileNumber = request.getParameter("mobileNumber");
			String department = request.getParameter("department");
			String designation = request.getParameter("designation");
			String qualification = request.getParameter("qualification");
			String experience = request.getParameter("experience");
			String email = request.getParameter("email");
			String plainPassword = request.getParameter("password");
			String hashedPassword = BCrypt.hashpw(plainPassword, BCrypt.gensalt());
			System.out.println(facultyId + "  " + name + " " + mobileNumber + " " + department + " " + designation
					+ " " + qualification + " " + experience + " " + email + " " + plainPassword + " "
					+ hashedPassword);
			Connection connection = DbConnections.mysqlConnector();
			PreparedStatement preparedStatement = connection.prepareStatement(signupQuery);
			preparedStatement.setString(1, facultyId);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, mobileNumber);
			preparedStatement.setString(4, department);
			preparedStatement.setString(5, designation);
			preparedStatement.setString(6, qualification);
			preparedStatement.setString(7, experience);
			preparedStatement.setString(8, email);
			preparedStatement.setString(9, hashedPassword);
			preparedStatement.execute();
			System.out.println("data inserted successfully");
			connection.close();
			response.sendRedirect("facultylogin");

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("errorpage");
		}
	}

}
