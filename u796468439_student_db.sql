-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 20, 2025 at 04:05 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u796468439_student_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `mobile`, `subject`, `message`, `created_at`) VALUES
(5, 'Amit Sharma', '9876543210', 'Regarding Course', 'I want details about your courses.', '2025-03-16 19:43:45'),
(6, 'Priya Singh', '8765432109', 'Admission Query', 'Can I enroll in mid-session?', '2025-03-16 19:43:45'),
(7, 'Rahul Verma', '7654321098', 'Fee Structure', 'What is the total fee for the course?', '2025-03-16 19:43:45'),
(8, 'Neha Gupta', '6543210987', 'Job Assistance', 'Do you provide job placement?', '2025-03-16 19:43:45'),
(9, 'Ravi Kumar', '5432109876', 'Course Duration', 'How long is the full course?', '2025-03-16 19:43:45'),
(10, 'Suman Das', '4321098765', 'Certification', 'Do I get a certificate after completing?', '2025-03-16 19:43:45'),
(11, 'Vikas Yadav', '3210987654', 'Discounts Available?', 'Is there any scholarship or discount?', '2025-03-16 19:43:45'),
(12, 'Anjali Mehta', '2109876543', 'Online Classes', 'Do you offer online training?', '2025-03-16 19:43:45'),
(13, 'Deepak Roy', '1098765432', 'Practical Sessions', 'Are there practical coding sessions?', '2025-03-16 19:43:45'),
(14, 'Meera Nair', '9988776655', 'Course Materials', 'Will I get study materials?', '2025-03-16 19:43:45'),
(15, 'Rohan Sharma', '9123456780', 'Course Inquiry', 'What programming languages do you cover?', '2025-03-16 19:44:05'),
(16, 'Pooja Khanna', '9234567891', 'Admission Details', 'Can I enroll for the next batch?', '2025-03-16 19:44:05'),
(17, 'Sanjay Kapoor', '9345678902', 'Fees Inquiry', 'Is there any installment option available?', '2025-03-16 19:44:05'),
(18, 'Anita Bansal', '9456789013', 'Exam Schedule', 'When will the exams be conducted?', '2025-03-16 19:44:05'),
(19, 'Vivek Malhotra', '9567890124', 'Placement Assistance', 'Do you provide job assistance?', '2025-03-16 19:44:05'),
(20, 'Sneha Choudhary', '9678901235', 'Certification Query', 'Are your certifications industry-recognized?', '2025-03-16 19:44:05'),
(21, 'Aakash Tyagi', '9789012346', 'Live Projects', 'Will I get to work on real-world projects?', '2025-03-16 19:44:05'),
(22, 'Manish Arora', '9890123457', 'Scholarships', 'Are there any scholarships available?', '2025-03-16 19:44:05'),
(23, 'Simran Kaur', '9901234568', 'Online Learning', 'Can I take this course online?', '2025-03-16 19:44:05'),
(24, 'Arjun Mehta', '9012345679', 'Internship Opportunity', 'Do you offer internships after the course?', '2025-03-16 19:44:05'),
(25, 'Kavita Joshi', '9112233445', 'Course Duration', 'How long will the full course take?', '2025-03-16 19:44:05'),
(26, 'Rajeev Nanda', '9223344556', 'Course Mode', 'Is this a part-time or full-time course?', '2025-03-16 19:44:05'),
(27, 'Neeraj Kumar', '9334455667', 'Lab Sessions', 'Do you have a lab for practicals?', '2025-03-16 19:44:05'),
(28, 'Swati Gupta', '9445566778', 'Study Material', 'Will I get books and notes for reference?', '2025-03-16 19:44:05'),
(29, 'Harish Yadav', '9556677889', 'Weekend Classes', 'Do you offer weekend batches?', '2025-03-16 19:44:05'),
(30, 'Tanvi Saxena', '9667788990', 'Placement Record', 'Can you share your past placement statistics?', '2025-03-16 19:44:05'),
(31, 'Mohit Jain', '9778899001', 'Doubt Sessions', 'Is there any session for doubt clearing?', '2025-03-16 19:44:05'),
(32, 'Jyoti Verma', '9889900112', 'Faculty Experience', 'Who will be teaching us?', '2025-03-16 19:44:05'),
(33, 'Tarun Sethi', '9991001123', 'Prerequisites', 'Do I need any prior knowledge before joining?', '2025-03-16 19:44:05'),
(34, 'Alok Bhardwaj', '9112233344', 'Course Reviews', 'Can you share feedback from past students?', '2025-03-16 19:44:05'),
(35, 'Ritik Saini', '9719700483', 'gggg', 'hii', '2025-05-12 09:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9719700483, 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2025-01-01 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(1, '10', 'A', '2025-01-01 04:42:14'),
(2, '10', 'B', '2025-01-01 04:42:14'),
(3, '10', 'C', '2025-01-01 04:42:14'),
(4, '11', 'A', '2025-01-01 04:42:14'),
(5, '11', 'B', '2025-01-01 04:42:14'),
(6, '11', 'C', '2025-01-01 04:42:14'),
(7, '11', 'D', '2025-01-01 04:42:14'),
(8, '12', 'A', '2025-01-01 04:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblhomework`
--

CREATE TABLE `tblhomework` (
  `id` int(11) NOT NULL,
  `homeworkTitle` mediumtext DEFAULT NULL,
  `classId` int(11) DEFAULT NULL,
  `homeworkDescription` longtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `lastDateofSubmission` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblhomework`
--

INSERT INTO `tblhomework` (`id`, `homeworkTitle`, `classId`, `homeworkDescription`, `postingDate`, `lastDateofSubmission`) VALUES
(6, 'Bio - Home Work', 8, 'Do It ASP', '2025-03-19 10:30:53', '2025-03-20'),
(7, 'Math - homework', 8, 'Complete this homework as soon as possible', '2025-03-20 10:40:10', '2025-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(7, 'Test Notice', 1, 'This is the test notice. This is the test notice. This is the test notice. This is the test notice. This is the test notice.', '2025-01-01 06:03:25'),
(8, 'Winter Vacnation', 1, 'Winter vacation till 15 Jan 2025', '2025-01-04 04:12:07'),
(9, 'Hii- it\'s notice', 8, 'mai tumko khtm kr dunga ????', '2025-03-19 10:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><h3 data-start=\"0\" data-end=\"46\"><strong data-start=\"4\" data-end=\"44\"><font color=\"#000000\">About Us - Student Management System</font></strong></h3><h3 data-start=\"0\" data-end=\"46\"><font color=\"#000000\"><span style=\"font-size: 0.9375rem; font-weight: initial;\">Welcome to the </span><strong data-start=\"63\" data-end=\"98\" style=\"font-size: 0.9375rem;\">Student Management System (SMS)</strong><span style=\"font-size: 0.9375rem; font-weight: initial;\"> – a comprehensive platform designed to streamline student records, academic progress, and administration. Our system ensures efficient management of student data, making it easier for institutions to handle enrollments, courses, attendance, and results.&nbsp;</span></font></h3><h3 data-start=\"0\" data-end=\"46\"><font color=\"#000000\"><span style=\"font-size: 0.9375rem; font-weight: initial;\">With a user-friendly interface, secure data handling, and real-time updates, our platform empowers students, teachers, and administrators to collaborate effectively. Whether you are a student tracking your academic journey or an administrator managing operations, </span><strong data-start=\"620\" data-end=\"627\" style=\"font-size: 0.9375rem;\">SMS</strong><span style=\"font-size: 0.9375rem; font-weight: initial;\"> provides a seamless experience.</span></font></h3><h3 data-start=\"0\" data-end=\"46\"><strong data-start=\"666\" data-end=\"710\" style=\"font-size: 0.9375rem;\"><font color=\"#000000\">Empowering Education Through Technology!</font></strong></h3></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Saharanpur | 247231 - Uttar Pardesh, India', 'contact.ritiksaini@gmail.com', 9719700483, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(3, 'Winter vaction', 'Vacation til 15 Jan', '2025-01-04 04:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(1, 'Student', 'student@gmail.com', '8', 'Male', '2025-03-01', '12345678', 'student', 'student', 9719700483, 9719700483, 'Saharanpur', 'student', '25d55ad283aa400af464c76d713c07ad', 'c9c2bce82b74978a3e87079f2ce6e52b1742301890.png', '2025-03-18 12:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbluploadedhomeworks`
--

CREATE TABLE `tbluploadedhomeworks` (
  `id` int(11) NOT NULL,
  `homeworkId` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  `homeworkDescription` longtext DEFAULT NULL,
  `homeworkFile` varchar(255) DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp(),
  `adminRemark` mediumtext DEFAULT NULL,
  `adminRemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluploadedhomeworks`
--

INSERT INTO `tbluploadedhomeworks` (`id`, `homeworkId`, `studentId`, `homeworkDescription`, `homeworkFile`, `postinDate`, `adminRemark`, `adminRemarkDate`) VALUES
(1, 2, 4, 'upload', '869d2b4df212b9b55402b8fca8e28870.pdf', '2025-01-01 05:47:45', 'ok', '2025-01-01 09:44:36'),
(2, 4, 6, 'Done', 'a375fcfbcac4b897b4574fbd4003467d.pdf', '2025-01-04 04:13:46', NULL, NULL),
(3, 5, 7, 'Homework Complete', 'ea64bf4ed7c184cbc0dafdc09d4d5c4f.pdf', '2025-03-18 12:53:32', '8', '2025-03-18 12:54:20'),
(4, 5, 8, 'Hii', '07190023a3214b56e33730f9be5a0383.pdf', '2025-03-19 03:57:12', '9', '2025-03-19 03:58:10'),
(5, 6, 9, 'homeword complete or task complete', 'f9e9a048d535561a481d4e470df633e9.pdf', '2025-03-19 10:50:07', '70/100', '2025-03-19 10:51:47'),
(6, 7, 7, 'homework complete | task complete', 'b1aa5590e87d6559b1d19681f20320f2.pdf', '2025-03-20 10:41:16', '70/100', '2025-03-20 10:41:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblhomework`
--
ALTER TABLE `tblhomework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluploadedhomeworks`
--
ALTER TABLE `tbluploadedhomeworks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblhomework`
--
ALTER TABLE `tblhomework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbluploadedhomeworks`
--
ALTER TABLE `tbluploadedhomeworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
