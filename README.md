# 🎓 Student Management System

![Student Management System Screenshot](https://project.ritiksaini.in/assets/images/screenshot.png)

A complete web-based solution for educational institutions to manage students, classes, notices, and homework submissions with dual portals for administrators and students.

---

## ✨ Key Features

### 👨‍💻 Admin Portal
- 📊 **Interactive Dashboard**: Real-time statistics and quick actions
- 🏫 **Class Management**:
  - Create new classes (Science, Commerce, Arts streams)
  - Edit existing class details
  - Archive inactive classes
- 👥 **Student Operations**:
  - Add new students with complete profiles
  - Edit student information (including class transfer)
  - Generate student ID cards
- 📝 **Homework System**:
  - Assign homework to specific classes
  - Set submission deadlines
  - Download submitted homework in PDF format
  - Rate submissions (0–10 scale with feedback)
- 📢 **Notice Board**:
  - Create class-specific notices (visible only to selected classes)
  - Post public notices (displayed on website header)
  - Schedule future notices
- 📃 **Content Management**:
  - Update "About Us" page content
  - Manage contact information (address, phone, email)
- 📈 **Reporting**:
  - Generate student performance reports (PDF/Excel)
  - View homework completion statistics
- 📬 **Enquiry Management**:
  - View and respond to contact form submissions
- ⚙️ **Profile Settings**:
  - Update admin name and contact details
  - Change account password

---

### 👨‍🎓 Student Portal
- 🏠 **Personal Dashboard**: Upcoming homework and notices
- 📋 **Notice Section**: Filter notices by class and date
- 📤 **Homework Interface**:
  - View assignment details and deadlines
  - Upload completed homework (PDF only)
  - View teacher ratings on submitted work

---

### 📬 Contact System
- Responsive contact form with validation
- All submissions stored in database
- Automatic confirmation to users

---

## 🚀 Getting Started

### ✅ Requirements
- PHP 7.4 or higher
- MySQL 5.7+ or MariaDB
- Apache/Nginx web server
- Composer (for dependencies)

---

### ⚙️ Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/codewithritiksaini/Student-Management-System.git
   ```
   
# Student Management System

## 🚀 Getting Started

1. **Configure Database**  
   Open the file:  
   `includes/dbconnection.php`  
   Set your database credentials (host, username, password, database name).

2. **Import Database**  
   If a `.sql` file is provided, import it into your MySQL database using phpMyAdmin or the MySQL command line.

3. **Serve the Project**  
   You can serve the project using:
   - Apache or Nginx  
   - Or the built-in PHP server:
     ```bash
     php -S localhost:8000
     ```

4. **Access in Browser**  
   Open your browser and go to:  
   [http://localhost/student-management-system](http://localhost/student-management-system)

## 🔐 Default Login Credentials

| Role    | Username | Password | Access Level     |
|---------|----------|----------|------------------|
| Admin   | admin    | 12345678 | Full access      |
| Student | student  | 12345678 | Limited access   |

---

Feel free to customize roles and credentials as needed.

**Project Structure**

\`\`\`bash  
student-management/  
├── admin/               # Admin backend  
│   ├── classes/         # Class management  
│   ├── students/        # Student operations  
│   ├── homework/        # Assignment system  
│   └── reports/         # Reporting modules  
├── student/             # Student portal  
│   ├── homework/        # Submission interface  
│   └── notices/         # Notice viewing  
├── includes/            # Core components  
│   ├── auth.php         # Authentication  
│   └── dbconnection.php # Database config  
├── assets/              # Static files  
│   ├── css/             # Stylesheets  
│   ├── js/              # JavaScript  
│   └── images/          # System images  
├── index.php            # Landing page  
├── contact.php          # Contact form  
└── about.php            # About page  
\`\`\`

# 🌐 Live Demo

🔗 [project.ritiksaini.in](https://project.ritiksaini.in)

### 🔐 Admin Panel:
`/admin` — *(use admin credentials)*

### 🎓 Student Portal:
`/student` — *(use student credentials)*

---

## 📞 Support

- 📧 **Email:** [support@ritiksaini.in](mailto:info@ritiksaini.in)

---

## 👨‍💻 Developed by

**Ritik Saini**  
📧 [contact.ritiksaini@gmail.com](mailto:contact.ritiksaini@gmail.com)  
🌐 [ritiksaini.in](https://ritiksaini.in)  
🔗 [GitHub](https://github.com/codewithritiksaini) <!-- Replace with actual GitHub profile link if different -->

---

## 📌 Disclaimer

For **demo, testing, or educational purposes only.**

---

> 📝 **Tips:**
> - Save this as `README.md` in your project root.
> - GitHub will automatically render it beautifully.
> - Want badges (e.g., license, PHP version)? Let me know, and I can add those too.

