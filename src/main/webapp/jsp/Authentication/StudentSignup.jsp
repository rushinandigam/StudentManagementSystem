<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Sign Up</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/student-signup.css">
</head>
<body>
	<!-- Left side - Login Image SVG 23k61a1286-->
	<div class="image-section">
		<img src="${pageContext.request.contextPath}/images/call_action.svg"
			alt="Student Registration" class="login-image">
		<div class="image-overlay">
			<h2>Join Us Today!</h2>
			<p>Create your student account to access our comprehensive
				learning management system and start your academic journey.</p>
		</div>
	</div>

	<!-- Right side - Signup Form -->
	<div class="form-section">
		<div class="signup-form">
			<h1>Student Registration</h1>
			<p class="subtitle">Fill in your details to create an account</p>

			<form action="studentSignupServlet" method="post"
				onsubmit="return validateStudentSignupForm()"
				class="signup-form-container" >
				
				<div class="input-group">
					<label for="registerNumber">Register Number</label> <input
						type="text" id="registerNumber" name="registerNumber"
						placeholder="Enter your register number" required>
					<p id="registerNumberMsg" class="validation-msg"></p>
				</div>

				<div class="input-group">
					<label for="name">Full Name</label> <input type="text" id="name"
						name="name" placeholder="Enter your full name" required>
					<p id="nameMsg" class="validation-msg"></p>
				</div>

				<div class="input-group">
					<label for="mobileNumber">Mobile Number</label> <input type="tel"
						id="mobileNumber" name="mobileNumber"
						placeholder="Enter your mobile number" required>
					<p id="mobileNumberMsg" class="validation-msg"></p>
				</div>

				<div class="input-group">
					<label for="address">Address</label>
					<textarea id="address" name="address"
						placeholder="Enter your address" rows="3" required></textarea>
					<p id="addressMsg" class="validation-msg"></p>
				</div>

				<div class="input-group">
					<label for="email">Email</label> <input type="email" id="email"
						name="email" placeholder="Enter your email id" required>
					<p id="emailMsg" class="validation-msg"></p>
				</div>

				<div class="input-group">
					<label for="password">Password</label> <input type="password"
						id="password" name="password" placeholder="Create a password"
						required>
					<p id="passwordMsg" class="validation-msg"></p>
				</div>

				<div class="input-group">
					<label for="confirmPassword">Confirm Password</label> <input
						type="password" id="confirmPassword" name="confirmPassword"
						placeholder="Confirm your password" required>
					<p id="confirmPasswordMsg" class="validation-msg"></p>
				</div>


				<%-- <div class="form-options">
                    <label class="terms-check">
                        <input type="checkbox" name="agreeTerms" required>
                        <span class="checkmark"></span>
                        I agree to the <a href="#" class="terms-link">Terms and Conditions</a>
                    </label>
                </div> --%>

				<button type="submit" class="signup-btn">Create Account</button>

				<div class="form-footer">
					<p>
						Already have an account? <a
							href="${pageContext.request.contextPath}/studentlogin"
							class="signin-link">Sign in here</a>
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
		src="${pageContext.request.contextPath}/js/student_signup.js"></script>
</body>
</html>
