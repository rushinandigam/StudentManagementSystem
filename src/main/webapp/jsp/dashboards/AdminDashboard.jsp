<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #2c3e50 0%, #34495e 100%);
        margin: 0;
        padding: 20px;
        min-height: 100vh;
    }
    .dashboard-container {
        max-width: 1400px;
        margin: 0 auto;
        background: white;
        border-radius: 15px;
        padding: 30px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }
    .header {
        text-align: center;
        margin-bottom: 40px;
        color: #333;
    }
    .header h1 {
        font-size: 2.8rem;
        margin-bottom: 10px;
        color: #2c3e50;
        font-weight: 700;
    }
    .welcome-text {
        font-size: 1.3rem;
        color: #666;
        margin-bottom: 10px;
    }
    .subtitle {
        color: #7f8c8d;
        font-size: 1rem;
    }
    .stats-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
        margin-bottom: 40px;
    }
    .stat-card {
        background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
        color: white;
        padding: 25px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }
    .stat-card:nth-child(2) {
        background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
    }
    .stat-card:nth-child(3) {
        background: linear-gradient(135deg, #27ae60 0%, #229954 100%);
    }
    .stat-card:nth-child(4) {
        background: linear-gradient(135deg, #f39c12 0%, #e67e22 100%);
    }
    .stat-number {
        font-size: 2.5rem;
        font-weight: 700;
        margin-bottom: 10px;
    }
    .stat-label {
        font-size: 1.1rem;
        opacity: 0.9;
    }
    .dashboard-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
        gap: 25px;
        margin-top: 40px;
    }
    .card {
        background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
        border-radius: 15px;
        padding: 30px;
        text-align: center;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
        transition: transform 0.3s ease;
        border-left: 5px solid #2c3e50;
    }
    .card:hover {
        transform: translateY(-5px);
    }
    .card h3 {
        color: #2c3e50;
        margin-bottom: 15px;
        font-size: 1.5rem;
        font-weight: 600;
    }
    .card p {
        color: #666;
        line-height: 1.6;
        margin-bottom: 20px;
        font-size: 1rem;
    }
    .card-button {
        background: linear-gradient(135deg, #2c3e50 0%, #34495e 100%);
        color: white;
        padding: 12px 30px;
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
        background: linear-gradient(135deg, #1a252f 0%, #2c3e50 100%);
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
    @media (max-width: 768px) {
        .dashboard-container {
            padding: 20px;
        }
        .header h1 {
            font-size: 2.2rem;
        }
        .dashboard-grid {
            grid-template-columns: 1fr;
        }
        .stats-grid {
            grid-template-columns: repeat(2, 1fr);
        }
    }
</style>
</head>
<body>
    <div class="dashboard-container">
        <div class="header">
            <h1>Admin Dashboard</h1>
            <p class="welcome-text">Complete System Management Portal</p>
            <p class="subtitle">Manage all aspects of the student management system</p>
        </div>
        
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-number">1,247</div>
                <div class="stat-label">Total Students</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">89</div>
                <div class="stat-label">Faculty Members</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">156</div>
                <div class="stat-label">Active Courses</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">23</div>
                <div class="stat-label">Departments</div>
            </div>
        </div>
        
        <div class="dashboard-grid">
            <div class="card">
                <h3>👨‍🎓 Student Management</h3>
                <p>Manage student registrations, profiles, enrollments, and academic records. View student performance analytics and manage bulk operations.</p>
                <a href="#" class="card-button">Manage Students</a>
            </div>
            
            <div class="card">
                <h3>👨‍🏫 Faculty Management</h3>
                <p>Handle faculty registrations, course assignments, and performance tracking. Manage faculty schedules and workload distribution.</p>
                <a href="#" class="card-button">Manage Faculty</a>
            </div>
            
            <div class="card">
                <h3>📚 Course Management</h3>
                <p>Create and manage courses, curriculum, syllabus, and academic programs. Set up course prerequisites and credit structures.</p>
                <a href="#" class="card-button">Manage Courses</a>
            </div>
            
            <div class="card">
                <h3>🏢 Department Management</h3>
                <p>Organize departments, assign heads, manage department resources, and oversee departmental academic activities.</p>
                <a href="#" class="card-button">Manage Departments</a>
            </div>
            
            <div class="card">
                <h3>📊 Reports & Analytics</h3>
                <p>Generate comprehensive reports on student performance, faculty workload, course enrollment, and institutional analytics.</p>
                <a href="#" class="card-button">View Reports</a>
            </div>
            
            <div class="card">
                <h3>⚙️ System Settings</h3>
                <p>Configure system parameters, academic calendars, grading systems, notification settings, and backup management.</p>
                <a href="#" class="card-button">System Settings</a>
            </div>
            
            <div class="card">
                <h3>👥 User Management</h3>
                <p>Manage admin accounts, set permissions, handle user roles, and oversee system access controls and security.</p>
                <a href="#" class="card-button">User Management</a>
            </div>
            
            <div class="card">
                <h3>📅 Academic Calendar</h3>
                <p>Set up academic terms, holidays, exam schedules, and important dates. Manage semester and course timelines.</p>
                <a href="#" class="card-button">Academic Calendar</a>
            </div>
        </div>
        
        <div class="logout-section">
            <p style="color: #666; margin-bottom: 15px;">System administration complete?</p>
            <a href="${pageContext.request.contextPath}/index.jsp" class="logout-btn">Logout</a>
        </div>
    </div>
</body>
</html>
