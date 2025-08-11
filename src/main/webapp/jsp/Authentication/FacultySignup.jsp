<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Faculty Sign Up</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/faculty-signup.css">
</head>
<body>
    <!-- Left side - Login Image SVG -->
    <div class="image-section">
        <img src="${pageContext.request.contextPath}/images/call_action.svg" alt="Faculty Registration" class="login-image">
        <div class="image-overlay">
            <h2>Faculty Registration</h2>
            <p>Join our academic team and create your faculty account to start teaching and managing courses.</p>
        </div>
    </div>
    
    <!-- Right side - Signup Form -->
    <div class="form-section">
        <div class="signup-form">
            <h1>Faculty Registration</h1>
            <p class="subtitle">Fill in your details to create a faculty account</p>
            
            <form action="facultySignupServlet" method="post" 
                  onsubmit="return validateFacultySignupForm()"
                  class="signup-form-container">
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
                    <label for="department">Department</label>
                    <select id="department" 
                            name="department" 
                            required>
                        <option value="">Select your department</option>
                        <option value="Computer Science">Computer Science</option>
                        <option value="Information Technology">Information Technology</option>
                        <option value="Electronics">Electronics & Communication</option>
                        <option value="Mechanical">Mechanical Engineering</option>
                        <option value="Civil">Civil Engineering</option>
                        <option value="Electrical">Electrical Engineering</option>
                        <option value="Mathematics">Mathematics</option>
                        <option value="Physics">Physics</option>
                        <option value="Chemistry">Chemistry</option>
                        <option value="English">English</option>
                        <option value="Business Administration">Business Administration</option>
                        <option value="Economics">Economics</option>
                    </select>
                </div>
                
                <div class="input-group">
                    <label for="designation">Designation</label>
                    <select id="designation" 
                            name="designation" 
                            required>
                        <option value="">Select your designation</option>
                        <option value="Professor">Professor</option>
                        <option value="Associate Professor">Associate Professor</option>
                        <option value="Assistant Professor">Assistant Professor</option>
                        <option value="Lecturer">Lecturer</option>
                        <option value="Senior Lecturer">Senior Lecturer</option>
                        <option value="Visiting Faculty">Visiting Faculty</option>
                        <option value="Lab Instructor">Lab Instructor</option>
                        <option value="Research Associate">Research Associate</option>
                    </select>
                </div>
                
                <div class="input-group">
                    <label for="qualification">Qualification</label>
                    <select id="qualification" 
                            name="qualification" 
                            required>
                        <option value="">Select your highest qualification</option>
                        <option value="PhD">PhD</option>
                        <option value="M.Tech">M.Tech</option>
                        <option value="M.E">M.E</option>
                        <option value="M.Sc">M.Sc</option>
                        <option value="M.A">M.A</option>
                        <option value="MBA">MBA</option>
                        <option value="M.Phil">M.Phil</option>
                        <option value="B.Tech">B.Tech</option>
                        <option value="B.E">B.E</option>
                        <option value="B.Sc">B.Sc</option>
                        <option value="B.A">B.A</option>
                    </select>
                </div>
                
                <div class="input-group">
                    <label for="experience">Experience (Years)</label>
                    <input type="number" 
                           id="experience" 
                           name="experience" 
                           placeholder="Enter your teaching experience in years" 
                           min="0" 
                           max="50" 
                           required>
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
                
                <button type="submit" class="signup-btn">Create Faculty Account</button>
                
                <div class="form-footer">
                    <p>Already have an account? <a href="${pageContext.request.contextPath}/facultylogin" class="signin-link">Sign in here</a></p>
                    <p><a href="${pageContext.request.contextPath}/index.jsp" class="back-home">← Back to Home</a></p>
                </div>
            </form>
        </div>
    </div>
    <script type="text/javascript"
        src="${pageContext.request.contextPath}/js/faculty_signup.js"></script>
</body>
</html>
