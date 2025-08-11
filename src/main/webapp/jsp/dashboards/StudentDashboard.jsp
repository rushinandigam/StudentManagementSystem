<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Dashboard</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
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
        color: #667eea;
        font-weight: 700;
    }
    .welcome-text {
        font-size: 1.2rem;
        color: #666;
        margin-bottom: 10px;
    }
    .student-info {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 20px;
        border-radius: 10px;
        margin-bottom: 30px;
        text-align: center;
    }
    .student-info h3 {
        margin: 0 0 10px 0;
        font-size: 1.3rem;
    }
    .student-info p {
        margin: 5px 0;
        opacity: 0.9;
    }
    .quick-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: 20px;
        margin-bottom: 30px;
    }
    .stat-card {
        background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
        padding: 20px;
        border-radius: 10px;
        text-align: center;
        border-left: 4px solid #667eea;
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.05);
    }
    .stat-number {
        font-size: 2rem;
        font-weight: 700;
        color: #667eea;
        margin-bottom: 5px;
    }
    .stat-label {
        color: #666;
        font-size: 0.9rem;
        font-weight: 500;
    }
    .dashboard-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 25px;
        margin-top: 30px;
    }
    .card {
        background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
        border-radius: 15px;
        padding: 25px;
        text-align: center;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
        transition: transform 0.3s ease;
        border-top: 4px solid #667eea;
    }
    .card:hover {
        transform: translateY(-5px);
    }
    .card-icon {
        font-size: 2.5rem;
        margin-bottom: 15px;
    }
    .card h3 {
        color: #667eea;
        margin-bottom: 15px;
        font-size: 1.4rem;
        font-weight: 600;
    }
    .card p {
        color: #666;
        line-height: 1.6;
        margin-bottom: 20px;
        font-size: 0.95rem;
    }
    .card-button {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
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
        background: linear-gradient(135deg, #5a67d8 0%, #667eea 100%);
        transform: translateY(-2px);
    }
    .recent-activity {
        background: #f8f9fa;
        border-radius: 10px;
        padding: 20px;
        margin: 30px 0;
        border-left: 4px solid #667eea;
    }
    .recent-activity h3 {
        color: #333;
        margin-bottom: 15px;
        font-size: 1.3rem;
    }
    .activity-item {
        padding: 10px 0;
        border-bottom: 1px solid #dee2e6;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .activity-item:last-child {
        border-bottom: none;
    }
    .activity-text {
        color: #666;
    }
    .activity-date {
        color: #999;
        font-size: 0.85rem;
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
            font-size: 2rem;
        }
        .dashboard-grid {
            grid-template-columns: 1fr;
        }
        .quick-stats {
            grid-template-columns: repeat(2, 1fr);
        }
    }
</style>
</head>
<body>
    <div class="dashboard-container">
        <div class="header">
            <h1>Student Dashboard</h1>
            <p class="welcome-text">Welcome to your academic portal</p>
        </div>
        
        <div class="student-info">
            <h3>👨‍🎓 John Doe</h3>
            <p><strong>Student ID:</strong> 23K61A1286</p>
            <p><strong>Department:</strong> Computer Science & Engineering</p>
            <p><strong>Semester:</strong> 4th Semester | <strong>Academic Year:</strong> 2024-25</p>
        </div>
        
        <div class="quick-stats">
            <div class="stat-card">
                <div class="stat-number">8.5</div>
                <div class="stat-label">Current CGPA</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">92%</div>
                <div class="stat-label">Attendance</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">6</div>
                <div class="stat-label">Enrolled Courses</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">142</div>
                <div class="stat-label">Total Credits</div>
            </div>
        </div>
        
        <div class="recent-activity">
            <h3>📋 Recent Activity</h3>
            <div class="activity-item">
                <span class="activity-text">Assignment submitted for Data Structures</span>
                <span class="activity-date">2 hours ago</span>
            </div>
            <div class="activity-item">
                <span class="activity-text">Attendance marked for Database Systems</span>
                <span class="activity-date">1 day ago</span>
            </div>
            <div class="activity-item">
                <span class="activity-text">Grade received for Operating Systems Quiz</span>
                <span class="activity-date">3 days ago</span>
            </div>
            <div class="activity-item">
                <span class="activity-text">New announcement in Computer Networks</span>
                <span class="activity-date">1 week ago</span>
            </div>
        </div>
        
        <div class="dashboard-grid">
            <div class="card">
                <div class="card-icon">📚</div>
                <h3>My Courses</h3>
                <p>View your enrolled courses, schedules, syllabus, and course materials. Track your progress in each subject.</p>
                <a href="#" class="card-button">View Courses</a>
            </div>
            
            <div class="card">
                <div class="card-icon">📝</div>
                <h3>Assignments</h3>
                <p>Check pending assignments, submit your work, and view grades with feedback from your instructors.</p>
                <a href="#" class="card-button">Assignments</a>
            </div>
            
            <div class="card">
                <div class="card-icon">📊</div>
                <h3>Grades & Results</h3>
                <p>Access your academic performance, semester grades, CGPA calculation, and transcript details.</p>
                <a href="#" class="card-button">View Grades</a>
            </div>
            
            <div class="card">
                <div class="card-icon">📅</div>
                <h3>Attendance</h3>
                <p>Monitor your attendance records, view subject-wise attendance percentage, and track your academic presence.</p>
                <a href="#" class="card-button">Attendance</a>
            </div>
            
            <div class="card">
                <div class="card-icon">🗓️</div>
                <h3>Timetable</h3>
                <p>View your class schedule, exam timetable, and important academic dates and deadlines.</p>
                <a href="#" class="card-button">Timetable</a>
            </div>
            
            <div class="card">
                <div class="card-icon">📖</div>
                <h3>Library</h3>
                <p>Access digital library resources, search for books, manage borrowed books, and reserve materials.</p>
                <a href="#" class="card-button">Library</a>
            </div>
            
            <div class="card">
                <div class="card-icon">💬</div>
                <h3>Messages</h3>
                <p>Communicate with faculty, receive announcements, and stay updated with important notifications.</p>
                <a href="#" class="card-button">Messages</a>
            </div>
            
            <div class="card">
                <div class="card-icon">⚙️</div>
                <h3>Profile Settings</h3>
                <p>Update your personal information, change password, manage account settings, and privacy preferences.</p>
                <a href="#" class="card-button">Settings</a>
            </div>
        </div>
        
        <div class="logout-section">
            <p style="color: #666; margin-bottom: 15px;">Ready to logout from your session?</p>
            <a href="${pageContext.request.contextPath}/index.jsp" class="logout-btn">Logout</a>
        </div>
    </div>
</body>
</html>