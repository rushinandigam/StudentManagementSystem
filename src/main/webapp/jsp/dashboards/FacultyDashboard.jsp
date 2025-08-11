<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Faculty Dashboard</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #27ae60 0%, #2ecc71 100%);
        margin: 0;
        padding: 20px;
        min-height: 100vh;
    }
    .dashboard-container {
        max-width: 1200px;
        margin: 0 auto;
        background: white;
        border-radius: 15px;
        padding: 30px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    }
    .header {
        text-align: center;
        margin-bottom: 40px;
        color: #333;
    }
    .header h1 {
        font-size: 2.5rem;
        margin-bottom: 10px;
        color: #27ae60;
    }
    .welcome-text {
        font-size: 1.2rem;
        color: #666;
    }
    .dashboard-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 25px;
        margin-top: 40px;
    }
    .card {
        background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
        border-radius: 15px;
        padding: 25px;
        text-align: center;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
        transition: transform 0.3s ease;
    }
    .card:hover {
        transform: translateY(-5px);
    }
    .card h3 {
        color: #27ae60;
        margin-bottom: 15px;
        font-size: 1.4rem;
    }
    .card p {
        color: #666;
        line-height: 1.6;
        margin-bottom: 20px;
    }
    .card-button {
        background: linear-gradient(135deg, #27ae60 0%, #2ecc71 100%);
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 1rem;
        font-weight: 600;
        transition: all 0.3s ease;
        text-decoration: none;
        display: inline-block;
    }
    .card-button:hover {
        background: linear-gradient(135deg, #229954 0%, #27ae60 100%);
        transform: translateY(-2px);
    }
    .logout-section {
        text-align: center;
        margin-top: 40px;
        padding-top: 30px;
        border-top: 2px solid #e9ecef;
    }
    .logout-btn {
        background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
        color: white;
        padding: 12px 30px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 1rem;
        font-weight: 600;
        text-decoration: none;
        display: inline-block;
        transition: all 0.3s ease;
    }
    .logout-btn:hover {
        background: linear-gradient(135deg, #c0392b 0%, #a93226 100%);
        transform: translateY(-2px);
    }
</style>
</head>
<body>
    <div class="dashboard-container">
        <div class="header">
            <h1>Faculty Dashboard</h1>
            <p class="welcome-text">Welcome to your faculty portal</p>
        </div>
        
        <div class="dashboard-grid">
            <div class="card">
                <h3>Manage Courses</h3>
                <p>Create, update and manage your courses. Add course materials, assignments and track student progress.</p>
                <a href="#" class="card-button">View Courses</a>
            </div>
            
            <div class="card">
                <h3>Student Management</h3>
                <p>View enrolled students, track their attendance, grades and communicate with them effectively.</p>
                <a href="#" class="card-button">Manage Students</a>
            </div>
            
            <div class="card">
                <h3>Assignments & Grades</h3>
                <p>Create assignments, quizzes and exams. Grade student submissions and provide feedback.</p>
                <a href="#" class="card-button">Assignments</a>
            </div>
            
            <div class="card">
                <h3>Attendance</h3>
                <p>Track and manage student attendance for all your classes. Generate attendance reports.</p>
                <a href="#" class="card-button">Attendance</a>
            </div>
            
            <div class="card">
                <h3>Reports & Analytics</h3>
                <p>Generate detailed reports on student performance, course completion and academic analytics.</p>
                <a href="#" class="card-button">View Reports</a>
            </div>
            
            <div class="card">
                <h3>Profile Settings</h3>
                <p>Update your personal information, change password and manage account settings.</p>
                <a href="#" class="card-button">Settings</a>
            </div>
        </div>
        
        <div class="logout-section">
            <p style="color: #666; margin-bottom: 15px;">Ready to logout?</p>
            <a href="${pageContext.request.contextPath}/index.jsp" class="logout-btn">Logout</a>
        </div>
    </div>
</body>
</html>
