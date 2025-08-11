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

@WebServlet("/facultySigninServlet")
public class FacultySigninServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public static Faculty isValidUser(String facultyId) throws SQLException {
        Connection connection = DbConnections.mysqlConnector();
        PreparedStatement preparedStatement = connection.prepareStatement(
                "SELECT faculty_id, password FROM faculty WHERE faculty_id = ?");
        preparedStatement.setString(1, facultyId);
        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            String facId = resultSet.getString("faculty_id");
            String password = resultSet.getString("password");
            connection.close();
            return new Faculty(facId, password);
        } else {
            connection.close();
            return null; // user not found
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String facultyId = request.getParameter("facultyId");
        String enteredPassword = request.getParameter("password");

        try {
            Faculty faculty = isValidUser(facultyId);

            if (faculty == null) {
                request.getRequestDispatcher("jsp/Authentication/FacultyLogin.jsp").forward(request, response);
                return;
            }

            boolean isPasswordCorrect = BCrypt.checkpw(enteredPassword, faculty.password);
            if (!isPasswordCorrect) {
                request.getRequestDispatcher("jsp/Authentication/FacultyLogin.jsp").forward(request, response);
                return;
            }

            // Login successful
            response.sendRedirect("facultydashboard");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("errorpage");
        }
    }
}

class Faculty {
    String facultyId;
    String password;

    Faculty(String facultyId, String password) {
        this.facultyId = facultyId;
        this.password = password;
    }
}
