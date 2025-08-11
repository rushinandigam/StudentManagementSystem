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

@WebServlet("/adminSigninServlet")
public class AdminSigninServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public static Admin isValidUser(String adminId) throws SQLException {
        Connection connection = DbConnections.mysqlConnector();
        PreparedStatement preparedStatement = connection.prepareStatement(
                "SELECT admin_id, password FROM admin WHERE admin_id = ?");
        preparedStatement.setString(1, adminId);
        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            String admId = resultSet.getString("admin_id");
            String password = resultSet.getString("password");
            connection.close();
            return new Admin(admId, password);
        } else {
            connection.close();
            return null; // user not found
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String adminId = request.getParameter("registerNumber");
        String enteredPassword = request.getParameter("password");

        try {
            Admin admin = isValidUser(adminId);

            if (admin == null) {
                request.getRequestDispatcher("jsp/Authentication/AdminLogin.jsp").forward(request, response);
                return;
            }

            boolean isPasswordCorrect = BCrypt.checkpw(enteredPassword, admin.password);
            if (!isPasswordCorrect) {
                request.getRequestDispatcher("jsp/Authentication/AdminLogin.jsp").forward(request, response);
                return;
            }

            // Login successful
            response.sendRedirect("admindashboard");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("errorpage");
        }
    }
}

class Admin {
    String adminId;
    String password;

    Admin(String adminId, String password) {
        this.adminId = adminId;
        this.password = password;
    }
}
