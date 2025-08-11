package com.studentmanagementsystem.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.mindrot.jbcrypt.BCrypt;
import com.studentmanagementsystem.services.DbConnections;

@WebServlet("/studentSigninServlet")
public class StudentSigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static Student isValidUser(String registerNumber) throws SQLException {
		Connection connection = DbConnections.mysqlConnector();
		PreparedStatement preparedStatement = connection.prepareStatement(
			"SELECT register_number, password FROM students WHERE register_number = ?"
		);
		preparedStatement.setString(1, registerNumber);
		ResultSet resultSet = preparedStatement.executeQuery();

		if (resultSet.next()) {
			String regNum = resultSet.getString("register_number");
			String password = resultSet.getString("password");
			connection.close();
			return new Student(regNum, password);
		} else {
			connection.close();
			return null; // user not found
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String registerNumber = request.getParameter("registerNumber");
		String enteredPassword = request.getParameter("password");

		try {
			Student student = isValidUser(registerNumber);

			if (student == null) {
				request.getRequestDispatcher("jsp/Authentication/StudentSignin.jsp").forward(request, response);
				return;
			}

			boolean isPasswordCorrect = BCrypt.checkpw(enteredPassword, student.password);
			if (!isPasswordCorrect) {
				request.getRequestDispatcher("jsp/Authentication/StudentSignin.jsp").forward(request, response);
				return;
			}

			// Login successful
			response.sendRedirect("studentdashboard");

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("errorpage");
		}
	}
}

class Student {
	String name;
	String password;

	Student(String name, String password) {
		this.name = name;
		this.password = password;
	}
}
