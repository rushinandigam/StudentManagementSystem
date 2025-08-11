<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="css/homepage.css">
</head>
<body>
    <nav>  
        <h1>Student Management System</h1>
       <ul>
    <li onclick="window.location.href='${pageContext.request.contextPath}/studentlogin'">
        <span class="nav-icon">🎓</span>
        Student Login
    </li>
    <li onclick="window.location.href='${pageContext.request.contextPath}/facultylogin'"> 
        <span class="nav-icon">👨‍💼</span>
        Faculty Login
    </li>
    <li onclick="window.location.href='${pageContext.request.contextPath}/adminlogin'">
        <span class="nav-icon">👨‍💼</span>
        Admin Login
    </li>
</ul>

    </nav>
      
    
    
    <div class="main-content">       
        <div class="welcome-section">
            <div class="welcome-icon">
                🎓
            </div>
            <h2>Welcome to Information Technology</h2>
            <p>Streamline your educational administration with our comprehensive student management platform. 
               Choose your login type above to access your personalized dashboard and manage academic records efficiently.</p>
            <div class="features">
                <div class="feature-item">
                    <span class="feature-icon">📚</span>
                    <h3>Course Management</h3>
                    <p>Organize and track academic courses</p>
                </div>
                <div class="feature-item">
                    <span class="feature-icon">📊</span>
                    <h3>Grade Tracking</h3>
                    <p>Monitor student performance and grades</p>
                </div>
                <div class="feature-item">
                    <span class="feature-icon">👥</span>
                    <h3>Student Records</h3>
                    <p>Comprehensive student information management</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html> 