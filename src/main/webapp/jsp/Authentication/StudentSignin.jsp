<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Sign in</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/student-signin.css">
</head>
<body>
	<!-- Left side - Login Image SVG -->
	<div class="image-section">
		<img src="${pageContext.request.contextPath}/images/loginsvg.png"
			alt="Student Login" class="login-image">
		<div class="image-overlay">
			<h2>Welcome Back!</h2>
			<p>Sign in to access your student portal and manage your academic
				journey.</p>
		</div>
	</div>

	<!-- Right side - Login Form -->
	<div class="form-section">
		<div class="login-form">
			<h1>Student Login</h1>
			<p class="subtitle">Enter your credentials to continue</p>
			<form action="studentSigninServlet" method="post" class="signin-form"
				onsubmit="return setupLoginValidation()">
				<div class="input-group">
					<label for="registerNumber">Register Number</label> <input
						type="text" id="registerNumber" name="registerNumber"
						placeholder="Enter your register number" required>
					<p id="registerNumberMsg"></p>
				</div>

				<div class="input-group">
					<label for="password">Password</label> <input type="password"
						id="password" name="password" placeholder="Enter your password"
						required>
					<p id="passwordMsg"></p>
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
					<p>
						Don't have an account? <a
							href="${pageContext.request.contextPath}/studentsignup"
							class="register-link">Register here</a>
					</p>
					<p>
						<a href="${pageContext.request.contextPath}/index.jsp"
							class="back-home">← Back to Home</a>
					</p>
				</div>

			</form>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/student_signin.js"></script>
</body>
</html>