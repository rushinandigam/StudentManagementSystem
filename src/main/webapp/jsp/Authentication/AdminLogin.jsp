<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin-login.css">
</head>
<body>
    <!-- Left side - Login Image SVG -->
    <div class="image-section">
        <img src="${pageContext.request.contextPath}/images/loginsvg.png" alt="Admin Login" class="login-image">
        <div class="image-overlay">
            <h2>Admin Portal</h2>
            <p>Access the administrative dashboard to manage students, courses, and system settings.</p>
        </div>
    </div>
    
    <!-- Right side - Login Form -->
    <div class="form-section">
        <div class="login-form">
            <h1>Admin Login</h1>
            <p class="subtitle">Enter your admin credentials</p>
            
            <form action="adminSigninServlet" method="post" 
                  onsubmit="return setupAdminLoginValidation()"
                  class="signin-form">
                <div class="input-group">
                    <label for="registerNumber">Admin ID</label>
                    <input type="text" 
                           id="registerNumber" 
                           name="registerNumber" 
                           placeholder="Enter your admin ID" 
                           required>
                    <p id="registerNumberMsg" class="validation-msg"></p>
                </div>
                
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" 
                           id="password" 
                           name="password" 
                           placeholder="Enter your password" 
                           required>
                    <p id="passwordMsg" class="validation-msg"></p>
                </div>
                
                <div class="form-options">
                    <%-- <label class="remember-me">
                        <input type="checkbox" name="rememberMe">
                        <span class="checkmark"></span>
                        Remember me
                    </label> --%>
                    <a href="#" class="forgot-password">Forgot Password?</a>
                </div>
                
                <button type="submit" class="login-btn">Sign In</button>
                
                <div class="form-footer">
                    <p>Don't have an admin account? <a href="${pageContext.request.contextPath}/adminsignup" class="register-link">Register here</a></p>
                    <p><a href="${pageContext.request.contextPath}/index.jsp" class="back-home">← Back to Home</a></p>
                </div>
            </form>
        </div>
    </div>
    <script type="text/javascript"
        src="${pageContext.request.contextPath}/js/admin_signin.js"></script>
</body>
</html>
