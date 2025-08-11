<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Sign Up</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin-signup.css">
</head>
<body>
    <!-- Left side - Login Image SVG -->
    <div class="image-section">
        <img src="${pageContext.request.contextPath}/images/call_action.svg" alt="Admin Registration" class="login-image">
        <div class="image-overlay">
            <h2>Admin Registration</h2>
            <p>Create your administrative account to manage the student management system and oversee academic operations.</p>
        </div>
    </div>
    
    <!-- Right side - Signup Form -->
    <div class="form-section">
        <div class="signup-form">
            <h1>Admin Registration</h1>
            <p class="subtitle">Fill in your details to create an admin account</p>
            
            <form action="adminSignupServlet" method="post" 
                  onsubmit="return validateAdminSignupForm()"
                  class="signup-form-container">
                <div class="input-group">
                    <label for="adminId">Admin ID</label>
                    <input type="text" 
                           id="adminId" 
                           name="adminId" 
                           placeholder="Enter your admin ID" 
                           required>
                    <p id="adminIdMsg" class="validation-msg"></p>
                </div>
                
                <div class="input-group">
                    <label for="name">Full Name</label>
                    <input type="text" 
                           id="name" 
                           name="name" 
                           placeholder="Enter your full name" 
                           required>
                    <p id="nameMsg" class="validation-msg"></p>
                </div>
                
                <div class="input-group">
                    <label for="mobileNumber">Mobile Number</label>
                    <input type="tel" 
                           id="mobileNumber" 
                           name="mobileNumber" 
                           placeholder="Enter your mobile number" 
                           required>
                    <p id="mobileNumberMsg" class="validation-msg"></p>
                </div>

                <div class="input-group">
                    <label for="jobRole">Job Role</label>
                    <select id="jobRole" 
                            name="jobRole" 
                            required>
                        <option value="">Select your job role</option>
                        <option value="Head of Department">Head of Department</option>
                        <option value="Dean">Dean</option>
                        <option value="Principal">Principal</option>
                    </select>
                </div>
                
                <div class="input-group">
                    <label for="email">Email</label>
                    <input type="email" 
                           id="email" 
                           name="email" 
                           placeholder="Enter your email address" 
                           required>
                    <p id="emailMsg" class="validation-msg"></p>
                </div>
                
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" 
                           id="password" 
                           name="password" 
                           placeholder="Create a password" 
                           required>
                    <p id="passwordMsg" class="validation-msg"></p>
                </div>
                
                <div class="input-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" 
                           id="confirmPassword" 
                           name="confirmPassword" 
                           placeholder="Confirm your password" 
                           required>
                    <p id="confirmPasswordMsg" class="validation-msg"></p>
                </div>
                
                <%-- <div class="form-options">
                    <label class="terms-check">
                        <input type="checkbox" name="agreeTerms" required>
                        <span class="checkmark"></span>
                        I agree to the <a href="#" class="terms-link">Terms and Conditions</a>
                    </label>
                </div> --%>
                
                <button type="submit" class="signup-btn">Create Admin Account</button>
                
                <div class="form-footer">
                    <p>Already have an account? <a href="${pageContext.request.contextPath}/adminlogin" class="signin-link">Sign in here</a></p>
                    <p><a href="${pageContext.request.contextPath}/index.jsp" class="back-home">← Back to Home</a></p>
                </div>
            </form>
        </div>
    </div>
    <script type="text/javascript"
        src="${pageContext.request.contextPath}/js/admin_signup.js"></script>
</body>
</html>
