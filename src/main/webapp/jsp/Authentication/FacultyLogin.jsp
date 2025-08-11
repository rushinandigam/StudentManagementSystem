<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Faculty Login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/faculty-login.css">
</head>
<body>
    <!-- Left side - Login Image SVG -->
    <div class="image-section">
        <img src="${pageContext.request.contextPath}/images/loginsvg.png" alt="Faculty Login" class="login-image">
        <div class="image-overlay">
            <h2>Faculty Portal</h2>
            <p>Access your faculty dashboard to manage courses, students, and academic activities.</p>
        </div>
    </div>
    
    <!-- Right side - Login Form -->
    <div class="form-section">
        <div class="login-form">
            <h1>Faculty Login</h1>
            <p class="subtitle">Enter your faculty credentials</p>
            
            <form action="facultySigninServlet" method="post" 
                  onsubmit="return setupFacultyLoginValidation()"
                  class="signin-form">
                <div class="input-group">
                    <label for="facultyId">Faculty ID</label>
                    <input type="text" 
                           id="facultyId" 
                           name="facultyId" 
                           placeholder="Enter your faculty ID" 
                           required>
                    <p id="facultyIdMsg" class="validation-msg"></p>
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
                    <label class="remember-me">
                        <input type="checkbox" name="rememberMe">
                        <span class="checkmark"></span>
                        Remember me
                    </label>
                    <a href="#" class="forgot-password">Forgot Password?</a>
                </div>
                
                <button type="submit" class="login-btn">Sign In</button>
                
                <div class="form-footer">
                    <p>Don't have a faculty account? <a href="${pageContext.request.contextPath}/facultysignup" class="register-link">Register here</a></p>
                    <p><a href="${pageContext.request.contextPath}/index.jsp" class="back-home">← Back to Home</a></p>
                </div>
            </form>
        </div>
    </div>
    <script type="text/javascript"
        src="${pageContext.request.contextPath}/js/faculty_signin.js"></script>
</body>
</html>
