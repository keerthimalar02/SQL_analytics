CREATE DATABASE IT_Project_Analytics;
use IT_Project_Analytics;

--- 1. Employees Table
CREATE TABLE Employees (
	Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Job_Role VARCHAR(50) NOT NULL,
    Experience_Years INT,
    Joining_Date DATE,
    Location VARCHAR(50)
);

--- 2. Projects Table
CREATE TABLE Projects (
	Proj_ID INT PRIMARY KEY,
    Proj_Name VARCHAR(100) NOT NULL,
    Proj_Type VARCHAR(50),
    Start_Date DATE NOT NULL,
    Deadline DATE NOT NULL,
    Actual_Completion_Date DATE,
    Planned_Budget DECIMAL(12, 2),
    Actual_Cost DECIMAL(12, 2),
    Piority VARCHAR(20),
    Proj_Status VARCHAR(30),
    Delay_Reason VARCHAR(100)
);

--- 3. Tasks Table
CREATE TABLE Tasks (
    Task_ID INT PRIMARY KEY,
    Emp_ID INT NOT NULL,
    Proj_ID INT NOT NULL,
    Task_Name VARCHAR(100) NOT NULL,
    Assigned_Date DATE,
    Due_Date DATE,
    Completion_Date DATE,
    Estimated_Hours DECIMAL(6,2),
    Actual_Hours DECIMAL(6,2),
    Task_Status VARCHAR(30),
    Quality_Score DECIMAL(5,2),
    Workflow_Stage VARCHAR(30),

    CONSTRAINT fk_tasks_employee
        FOREIGN KEY (Emp_ID)
        REFERENCES Employees(Emp_ID),

    CONSTRAINT fk_tasks_project
        FOREIGN KEY (Proj_ID)
        REFERENCES Projects(Proj_ID)
);

SHOW TABLES;

DESCRIBE Employees;
DESCRIBE Projects;
DESCRIBE Tasks;

INSERT INTO Employees
(Emp_ID, Emp_Name, Department, Job_Role, Experience_Years, Joining_Date, Location)
VALUES
(101, 'Surya Murugan', 'UI/UX Design', 'UX Designer', 2, '2024-02-01', 'Coimbatore'),
(102, 'Rahul Murugan', 'UI/UX Design', 'Product Designer', 6, '2019-03-18', 'Chennai'),
(103, 'Divya Rao', 'Quality Assurance', 'Automation Tester', 2, '2024-12-21', 'Bengaluru'),
(104, 'Nandhini Murugan', 'Data Analytics', 'Data Engineer', 9, '2016-11-20', 'Hyderabad'),
(105, 'Dinesh Murugan', 'Technical Support', 'Application Support Analyst', 0, '2026-10-02', 'Mumbai'),
(106, 'Ananya Bose', 'DevOps', 'System Engineer', 6, '2019-04-04', 'Coimbatore'),
(107, 'Kiran Verma', 'DevOps', 'DevOps Engineer', 1, '2025-04-24', 'Hyderabad'),
(108, 'Lakshmi Patel', 'DevOps', 'Cloud Engineer', 1, '2025-10-19', 'Pune'),
(109, 'Nithya Kumar', 'Software Development', 'Backend Developer', 0, '2026-08-21', 'Chennai'),
(110, 'Jeeva Rao', 'UI/UX Design', 'UX Designer', 0, '2025-01-20', 'Hyderabad'),
(111, 'Ramesh Bose', 'Human Resources', 'HR Analyst', 1, '2025-03-22', 'Bengaluru'),
(112, 'Karthik Raj', 'Technical Support', 'Application Support Analyst', 6, '2020-06-02', 'Hyderabad'),
(113, 'Riya Sharma', 'UI/UX Design', 'UX Designer', 4, '2021-08-03', 'Bengaluru'),
(114, 'Swetha Menon', 'Project Management', 'Scrum Master', 4, '2022-01-24', 'Delhi'),
(115, 'Vijay Pillai', 'Business Analysis', 'Business Analyst', 3, '2022-02-15', 'Coimbatore'),
(116, 'Keerthi Bose', 'DevOps', 'DevOps Engineer', 10, '2016-12-19', 'Kochi'),
(117, 'Ananya Singh', 'Human Resources', 'Recruitment Coordinator', 9, '2017-10-11', 'Mumbai'),
(118, 'Ishita Rao', 'UI/UX Design', 'UX Designer', 2, '2024-09-04', 'Chennai'),
(119, 'Janani Naidu', 'Technical Support', 'Technical Support Engineer', 3, '2022-09-05', 'Delhi'),
(120, 'Saranya Kumar', 'UI/UX Design', 'UX Designer', 1, '2025-08-11', 'Mumbai'),
(121, 'Madhavan Reddy', 'Technical Support', 'Technical Support Engineer', 0, '2025-12-10', 'Coimbatore'),
(122, 'Vidhya Reddy', 'Software Development', 'Frontend Developer', 3, '2023-11-01', 'Kochi'),
(123, 'Deepa Murugan', 'Software Development', 'Full Stack Developer', 0, '2026-05-12', 'Mumbai'),
(124, 'Swetha Naidu', 'Cybersecurity', 'Cybersecurity Engineer', 8, '2018-02-25', 'Chennai'),
(125, 'Abinaya Patel', 'DevOps', 'Cloud Engineer', 0, '2026-09-27', 'Coimbatore'),
(126, 'Sneha Patel', 'Business Analysis', 'Business Analyst', 1, '2025-11-14', 'Pune'),
(127, 'Dinesh Rao', 'Business Analysis', 'Requirements Analyst', 0, '2026-05-03', 'Kochi'),
(128, 'Saranya Verma', 'Cybersecurity', 'Security Analyst', 4, '2022-03-19', 'Mumbai'),
(129, 'Yamini Menon', 'Quality Assurance', 'Automation Tester', 6, '2019-09-11', 'Delhi'),
(130, 'Pavithra Verma', 'Quality Assurance', 'QA Engineer', 9, '2016-05-17', 'Coimbatore'),
(131, 'Priya Kumar', 'Data Analytics', 'Junior Data Analyst', 3, '2022-02-17', 'Kochi'),
(132, 'Kiran Nair', 'Data Analytics', 'Junior Data Analyst', 0, '2026-08-11', 'Hyderabad'),
(133, 'Ganesh Krishnan', 'UI/UX Design', 'UX Designer', 7, '2019-07-04', 'Pune'),
(134, 'Kiran Rao', 'Project Management', 'Scrum Master', 7, '2018-07-09', 'Bengaluru'),
(135, 'Nandhini Pillai', 'Project Management', 'Scrum Master', 0, '2026-06-22', 'Delhi'),
(136, 'Ramesh Murugan', 'Human Resources', 'HR Analyst', 5, '2020-03-25', 'Kochi'),
(137, 'Karthik Rao', 'Project Management', 'Scrum Master', 5, '2021-04-25', 'Kochi'),
(138, 'Arjun Prasad', 'Project Management', 'Scrum Master', 5, '2021-10-16', 'Delhi'),
(139, 'Bala Sharma', 'Quality Assurance', 'Automation Tester', 7, '2018-04-22', 'Kochi'),
(140, 'Rahul Bose', 'DevOps', 'System Engineer', 6, '2020-07-07', 'Hyderabad'),
(141, 'Sneha Kumar', 'Business Analysis', 'Business Analyst', 2, '2023-02-06', 'Delhi'),
(142, 'Aditya Krishnan', 'Business Analysis', 'Business Analyst', 1, '2025-03-02', 'Bengaluru'),
(143, 'Meena Prasad', 'Software Development', 'Software Developer', 8, '2018-09-10', 'Kochi'),
(144, 'Surya Krishnan', 'Human Resources', 'Recruitment Coordinator', 6, '2020-12-18', 'Pune'),
(145, 'Swetha Gupta', 'Data Analytics', 'Data Analyst', 1, '2025-08-07', 'Bengaluru'),
(146, 'Akash Das', 'DevOps', 'Cloud Engineer', 3, '2022-06-08', 'Chennai'),
(147, 'Vishal Reddy', 'DevOps', 'System Engineer', 6, '2019-02-20', 'Bengaluru'),
(148, 'Akash Pillai', 'Data Analytics', 'Business Analyst', 1, '2025-09-26', 'Delhi'),
(149, 'Ananya Krishnan', 'Software Development', 'Full Stack Developer', 0, '2026-03-16', 'Coimbatore'),
(150, 'Nandhini Patel', 'UI/UX Design', 'Product Designer', 2, '2024-07-03', 'Kochi'),
(151, 'Aarav Prasad', 'Data Analytics', 'Junior Data Analyst', 3, '2023-12-15', 'Chennai'),
(152, 'Sneha Sharma', 'Technical Support', 'Application Support Analyst', 2, '2024-12-28', 'Hyderabad'),
(153, 'Pavithra Sharma', 'DevOps', 'System Engineer', 0, '2026-09-22', 'Coimbatore'),
(154, 'Meena Murugan', 'Data Analytics', 'Data Analyst', 6, '2019-01-16', 'Kochi'),
(155, 'Riya Krishnan', 'Human Resources', 'Recruitment Coordinator', 3, '2022-10-05', 'Coimbatore'),
(156, 'Nithya Menon', 'DevOps', 'Cloud Engineer', 2, '2024-10-04', 'Coimbatore'),
(157, 'Shreya Rao', 'Business Analysis', 'Requirements Analyst', 2, '2023-10-02', 'Coimbatore'),
(158, 'Deepa Menon', 'Software Development', 'Backend Developer', 0, '2026-09-12', 'Kochi'),
(159, 'Rahul Raj', 'Technical Support', 'Technical Support Engineer', 0, '2026-09-19', 'Mumbai'),
(160, 'Charan Nair', 'DevOps', 'System Engineer', 4, '2022-10-08', 'Pune'),
(161, 'Varun Prasad', 'Business Analysis', 'Business Analyst', 0, '2026-08-17', 'Hyderabad'),
(162, 'Hema Prasad', 'Human Resources', 'Recruitment Coordinator', 8, '2018-07-13', 'Kochi'),
(163, 'Bhavana Krishnan', 'Project Management', 'Project Manager', 1, '2025-10-15', 'Mumbai'),
(164, 'Ganesh Bose', 'Project Management', 'Assistant Project Manager', 5, '2021-12-24', 'Delhi'),
(165, 'Siva Sharma', 'Quality Assurance', 'QA Tester', 1, '2025-05-04', 'Pune'),
(166, 'Surya Naidu', 'UI/UX Design', 'UX Designer', 3, '2022-01-15', 'Pune'),
(167, 'Mohan Nair', 'Technical Support', 'Technical Support Engineer', 1, '2025-06-04', 'Chennai'),
(168, 'Janani Das', 'DevOps', 'DevOps Engineer', 1, '2025-03-28', 'Chennai'),
(169, 'Sneha Raj', 'Business Analysis', 'Requirements Analyst', 2, '2023-10-27', 'Chennai'),
(170, 'Aditya Sharma', 'Data Analytics', 'Data Engineer', 1, '2024-11-02', 'Hyderabad'),
(171, 'Meena Nair', 'DevOps', 'System Engineer', 1, '2025-06-16', 'Coimbatore'),
(172, 'Karthik Nair', 'Human Resources', 'HR Analyst', 8, '2018-08-18', 'Pune'),
(173, 'Abinaya Raj', 'Technical Support', 'Application Support Analyst', 1, '2025-01-01', 'Pune'),
(174, 'Bhavana Sharma', 'DevOps', 'System Engineer', 0, '2026-02-26', 'Mumbai'),
(175, 'Harish Bose', 'Human Resources', 'HR Analyst', 2, '2024-08-27', 'Delhi'),
(176, 'Karthik Gupta', 'Project Management', 'Assistant Project Manager', 0, '2026-09-27', 'Coimbatore'),
(177, 'Vidhya Verma', 'Data Analytics', 'Business Analyst', 4, '2021-05-19', 'Pune'),
(178, 'Swetha Nair', 'DevOps', 'Cloud Engineer', 1, '2025-05-09', 'Bengaluru'),
(179, 'Jeeva Bose', 'UI/UX Design', 'UX Designer', 2, '2024-09-25', 'Hyderabad'),
(180, 'Riya Singh', 'Software Development', 'Senior Developer', 4, '2022-08-10', 'Bengaluru'),
(181, 'Yamini Das', 'UI/UX Design', 'Product Designer', 2, '2024-12-08', 'Chennai'),
(182, 'Kiran Kumar', 'Business Analysis', 'Business Analyst', 5, '2021-07-21', 'Mumbai'),
(183, 'Pavithra Gupta', 'UI/UX Design', 'UX Designer', 8, '2018-10-18', 'Chennai'),
(184, 'Aarav Krishnan', 'DevOps', 'DevOps Engineer', 5, '2021-09-27', 'Hyderabad'),
(185, 'Dinesh Prasad', 'Software Development', 'Backend Developer', 6, '2020-01-07', 'Pune'),
(186, 'Sowmya Krishnan', 'Technical Support', 'Technical Support Engineer', 3, '2023-07-04', 'Pune'),
(187, 'Vidhya Naidu', 'UI/UX Design', 'Product Designer', 9, '2016-09-19', 'Coimbatore'),
(188, 'Yamini Iyer', 'UI/UX Design', 'UI Designer', 4, '2022-08-28', 'Pune'),
(189, 'Deepa Nair', 'Data Analytics', 'Data Analyst', 1, '2025-06-17', 'Pune'),
(190, 'Arjun Murugan', 'Technical Support', 'Application Support Analyst', 4, '2022-02-21', 'Mumbai'),
(191, 'Sneha Pillai', 'Technical Support', 'Technical Support Engineer', 3, '2022-04-20', 'Chennai'),
(192, 'Deepa Kumar', 'UI/UX Design', 'UX Designer', 4, '2022-03-22', 'Coimbatore'),
(193, 'Rahul Reddy', 'UI/UX Design', 'Product Designer', 1, '2025-03-12', 'Hyderabad'),
(194, 'Sowmya Patel', 'Data Analytics', 'Data Analyst', 4, '2022-11-18', 'Kochi'),
(195, 'Vijay Rao', 'Technical Support', 'Technical Support Engineer', 1, '2025-07-10', 'Hyderabad'),
(196, 'Janani Gupta', 'Cybersecurity', 'Cybersecurity Engineer', 1, '2025-04-11', 'Mumbai'),
(197, 'Dinesh Patel', 'Business Analysis', 'Requirements Analyst', 2, '2023-05-21', 'Hyderabad'),
(198, 'Yamini Krishnan', 'Human Resources', 'HR Analyst', 2, '2024-06-18', 'Delhi'),
(199, 'Ananya Menon', 'Quality Assurance', 'Automation Tester', 9, '2017-02-04', 'Kochi'),
(200, 'Naveen Raj', 'Project Management', 'Project Manager', 10, '2016-06-09', 'Chennai');

SELECT * FROM Employees;

INSERT INTO Projects
(Proj_ID, Proj_Name, Proj_Type, Start_Date, Deadline,
 Actual_Completion_Date, Planned_Budget, Actual_Cost,
 Piority, Proj_Status, Delay_Reason)
VALUES
(501,'Customer Portal','Web Application','2025-01-06','2025-03-31','2025-03-25',450000,435000,'High','Completed',NULL),
(502,'Sales Dashboard','Data Analytics','2025-01-15','2025-04-15','2025-04-22',300000,325000,'High','Completed','Requirement Changes'),
(503,'Inventory System','Web Application','2025-02-01','2025-05-01','2025-04-28',520000,510000,'Medium','Completed',NULL),
(504,'Mobile Banking UI','Mobile Application','2025-02-10','2025-06-10','2025-06-25',700000,735000,'High','Completed','Client Feedback'),
(505,'HR Management Portal','SaaS','2025-03-01','2025-06-30','2025-06-20',400000,390000,'Medium','Completed',NULL),
(506,'Customer Churn Model','AI/ML','2025-03-15','2025-07-15','2025-07-30',650000,690000,'High','Completed','Technical Issues'),
(507,'E-commerce Platform','Web Application','2025-04-01','2025-08-01','2025-07-28',850000,830000,'High','Completed',NULL),
(508,'Employee Attendance App','Mobile Application','2025-04-15','2025-07-30','2025-08-12',350000,370000,'Medium','Completed','Resource Shortage'),
(509,'Finance Reporting Tool','Data Analytics','2025-05-01','2025-08-31','2025-08-25',480000,465000,'High','Completed',NULL),
(510,'Cloud Migration Phase 1','Cloud Migration','2025-05-10','2025-09-10','2025-09-25',1200000,1290000,'High','Completed','Technical Issues'),
(511,'Product Recommendation Engine','AI/ML','2025-06-01','2025-10-01','2025-09-28',900000,880000,'High','Completed',NULL),
(512,'Customer Support Chatbot','AI/ML','2025-06-15','2025-09-30','2025-10-15',550000,590000,'Medium','Completed','Requirement Changes'),
(513,'Vendor Management System','Web Application','2025-07-01','2025-10-31','2025-10-26',430000,420000,'Medium','Completed',NULL),
(514,'Digital Marketing Analytics','Data Analytics','2025-07-15','2025-11-15','2025-11-28',500000,530000,'High','Completed','Client Feedback'),
(515,'Online Learning Platform','SaaS','2025-08-01','2025-12-01','2025-11-25',750000,730000,'High','Completed',NULL),
(516,'Bug Tracking System','Web Application','2025-08-10','2025-11-30','2025-12-12',320000,340000,'Medium','Completed','Resource Shortage'),
(517,'Fraud Detection Model','AI/ML','2025-09-01','2026-01-15','2026-01-10',980000,960000,'High','Completed',NULL),
(518,'Employee Self-Service Portal','SaaS','2025-09-15','2026-01-15','2026-01-29',410000,445000,'Medium','Completed','Requirement Changes'),
(519,'Logistics Tracking App','Mobile Application','2025-10-01','2026-02-01','2026-01-27',600000,585000,'High','Completed',NULL),
(520,'Data Warehouse Phase 1','Data Analytics','2025-10-15','2026-03-15','2026-03-28',1100000,1170000,'High','Completed','Technical Issues'),
(521,'Appointment Booking App','Mobile Application','2025-11-01','2026-02-28','2026-02-20',390000,380000,'Medium','Completed',NULL),
(522,'Subscription Billing System','SaaS','2025-11-15','2026-03-31','2026-04-10',620000,650000,'High','Completed','Client Feedback'),
(523,'Website Redesign','Web Application','2025-12-01','2026-03-31','2026-03-26',280000,270000,'Low','Completed',NULL),
(524,'Sales Forecasting Model','AI/ML','2025-12-10','2026-04-15','2026-04-30',720000,755000,'High','Completed','Data Quality Issues'),
(525,'IT Asset Management','SaaS','2026-01-05','2026-04-30','2026-04-25',440000,430000,'Medium','Completed',NULL),
(526,'Payment Gateway Integration','Web Application','2026-01-15','2026-05-15','2026-05-30',800000,845000,'High','Completed','Technical Issues'),
(527,'Customer Feedback Analyzer','Data Analytics','2026-02-01','2026-05-31','2026-05-26',360000,350000,'Medium','Completed',NULL),
(528,'Healthcare Appointment System','Web Application','2026-02-10','2026-06-15','2026-06-29',670000,710000,'High','Completed','Requirement Changes'),
(529,'Cloud Migration Phase 2','Cloud Migration','2026-03-01','2026-07-31','2026-07-25',1350000,1320000,'High','Completed',NULL),
(530,'Quality Monitoring Dashboard','Data Analytics','2026-03-15','2026-07-15','2026-07-29',390000,415000,'Medium','Completed','Resource Shortage'),
(531,'Retail Demand Forecast','AI/ML','2026-04-01','2026-08-15','2026-08-10',760000,740000,'High','Completed',NULL),
(532,'Internal Communication App','Mobile Application','2026-04-10','2026-08-10','2026-08-24',340000,365000,'Medium','Completed','Client Feedback'),
(533,'Document Approval Workflow','SaaS','2026-04-20','2026-08-31','2026-08-27',420000,410000,'Medium','Completed',NULL),
(534,'Cybersecurity Audit Tool','Cybersecurity','2026-05-01','2026-09-01','2026-09-12',580000,610000,'High','Completed','Technical Issues'),
(535,'Customer Segmentation','Data Analytics','2026-05-10','2026-09-15','2026-09-08',470000,455000,'Medium','Completed',NULL),
(536,'Warehouse Automation Portal','Web Application','2026-05-20','2026-09-30',NULL,690000,510000,'High','In Progress',NULL),
(537,'AI Resume Screening','AI/ML','2026-06-01','2026-10-15',NULL,720000,460000,'High','In Progress',NULL),
(538,'Project Resource Planner','SaaS','2026-06-05','2026-10-20',NULL,460000,290000,'Medium','In Progress',NULL),
(539,'Mobile Expense Tracker','Mobile Application','2026-06-10','2026-10-30',NULL,330000,215000,'Medium','In Progress',NULL),
(540,'Data Quality Monitoring','Data Analytics','2026-06-15','2026-11-15',NULL,510000,260000,'High','In Progress',NULL),
(541,'API Management Platform','Web Application','2026-06-20','2026-11-20',NULL,780000,390000,'High','In Progress',NULL),
(542,'Cloud Cost Optimization','Cloud Migration','2026-07-01','2026-11-30',NULL,620000,310000,'High','In Progress',NULL),
(543,'Customer Loyalty App','Mobile Application','2026-07-05','2026-11-15',NULL,490000,240000,'Medium','In Progress',NULL),
(544,'Automated Testing Framework','Quality Assurance','2026-07-10','2026-12-10',NULL,450000,220000,'High','In Progress',NULL),
(545,'Business KPI Dashboard','Data Analytics','2026-07-15','2026-12-15',NULL,380000,190000,'Medium','In Progress',NULL),
(546,'Supply Chain Analytics','Data Analytics','2026-07-20','2026-12-20',NULL,680000,300000,'High','In Progress',NULL),
(547,'Identity Access Management','Cybersecurity','2026-08-01','2026-12-31',NULL,850000,280000,'High','In Progress',NULL),
(548,'AI Document Classifier','AI/ML','2026-08-05','2027-01-15',NULL,590000,210000,'Medium','In Progress',NULL),
(549,'Online Booking Upgrade','Web Application','2026-08-10','2026-12-20',NULL,410000,160000,'Medium','In Progress',NULL),
(550,'Data Pipeline Automation','Data Analytics','2026-08-15','2027-01-31',NULL,630000,190000,'High','In Progress',NULL),
(551,'Mobile Inventory Scanner','Mobile Application','2026-08-20','2027-01-20',NULL,370000,120000,'Medium','In Progress',NULL),
(552,'Security Incident Dashboard','Cybersecurity','2026-08-25','2027-02-15',NULL,540000,95000,'High','In Progress',NULL),
(553,'CRM Integration','SaaS','2026-09-01','2027-02-28',NULL,710000,130000,'High','In Progress',NULL),
(554,'Knowledge Base Portal','Web Application','2026-09-05','2027-01-31',NULL,320000,85000,'Low','In Progress',NULL),
(555,'Real-Time Sales Monitor','Data Analytics','2026-09-10','2027-03-10',NULL,570000,70000,'High','In Progress',NULL),
(556,'Digital Signature Service','SaaS','2026-09-15','2027-02-15',NULL,480000,55000,'Medium','In Progress',NULL),
(557,'Smart Notification Engine','AI/ML','2026-09-20','2027-03-20',NULL,610000,45000,'High','In Progress',NULL),
(558,'Customer Portal Upgrade','Web Application','2026-09-25','2027-03-31',NULL,520000,30000,'Medium','In Progress',NULL),
(559,'Employee Learning Platform','SaaS','2026-10-01','2027-04-15',NULL,650000,25000,'Medium','In Progress',NULL),
(560,'Cloud Backup Automation','Cloud Migration','2026-10-05','2027-04-30',NULL,730000,20000,'High','In Progress',NULL),
(561,'Legacy System Modernization','Web Application','2026-03-01','2026-07-01',NULL,900000,500000,'High','On Hold','Resource Shortage'),
(562,'Data Governance Platform','Data Analytics','2026-04-01','2026-08-01',NULL,750000,350000,'High','On Hold','Requirement Changes'),
(563,'Mobile Wallet Upgrade','Mobile Application','2026-05-01','2026-09-01',NULL,620000,280000,'Medium','On Hold','Client Feedback'),
(564,'AI Quality Inspection','AI/ML','2026-05-15','2026-09-15',NULL,820000,390000,'High','On Hold','Technical Issues'),
(565,'Enterprise Search Tool','SaaS','2026-06-01','2026-10-01',NULL,470000,180000,'Medium','On Hold','Requirement Changes'),
(566,'Network Monitoring Portal','Cybersecurity','2026-06-15','2026-10-15',NULL,590000,210000,'High','On Hold','Resource Shortage'),
(567,'Supplier Analytics','Data Analytics','2026-07-01','2026-11-01',NULL,530000,160000,'Medium','On Hold','Client Feedback'),
(568,'Automated Invoice Processing','AI/ML','2026-07-15','2026-11-15',NULL,680000,130000,'High','On Hold','Technical Issues'),
(569,'Field Service App','Mobile Application','2026-08-01','2026-12-01',NULL,430000,90000,'Medium','On Hold','Resource Shortage'),
(570,'Marketing Automation','SaaS','2026-08-15','2026-12-15',NULL,560000,80000,'Medium','On Hold','Requirement Changes'),
(571,'Old CRM Replacement','Web Application','2025-01-10','2025-05-10',NULL,500000,170000,'Low','Cancelled','Budget Reduction'),
(572,'Prototype Chat Application','Mobile Application','2025-02-05','2025-06-05',NULL,280000,90000,'Low','Cancelled','Business Priorities Changed'),
(573,'Experimental AI Assistant','AI/ML','2025-03-01','2025-07-01',NULL,650000,230000,'Medium','Cancelled','Feasibility Issues'),
(574,'Branch Network Upgrade','Cloud Migration','2025-04-10','2025-08-10',NULL,720000,260000,'Medium','Cancelled','Budget Reduction'),
(575,'Legacy Payroll Tool','SaaS','2025-05-15','2025-09-15',NULL,390000,140000,'Low','Cancelled','Business Priorities Changed'),
(576,'Social Listening Prototype','Data Analytics','2025-06-01','2025-10-01',NULL,350000,100000,'Low','Cancelled','Feasibility Issues'),
(577,'Experimental AR App','Mobile Application','2025-07-15','2025-11-15',NULL,800000,290000,'Medium','Cancelled','Budget Reduction'),
(578,'Old Reporting Replacement','Data Analytics','2025-08-01','2025-12-01',NULL,460000,150000,'Low','Cancelled','Business Priorities Changed'),
(579,'Standalone Chatbot Pilot','AI/ML','2025-09-10','2026-01-10',NULL,420000,160000,'Low','Cancelled','Feasibility Issues'),
(580,'Legacy Document Archive','Web Application','2025-10-01','2026-02-01',NULL,310000,80000,'Low','Cancelled','Budget Reduction'),
(581,'Partner Integration Hub','Web Application','2025-11-01','2026-03-01','2026-03-05',570000,590000,'High','Completed','Technical Issues'),
(582,'Product Usage Analytics','Data Analytics','2025-12-01','2026-04-01','2026-03-29',440000,425000,'Medium','Completed',NULL),
(583,'Claims Processing Portal','SaaS','2026-01-10','2026-05-10','2026-05-20',690000,730000,'High','Completed','Requirement Changes'),
(584,'Route Optimization Model','AI/ML','2026-02-01','2026-06-01','2026-05-27',610000,595000,'High','Completed',NULL),
(585,'Customer Identity Portal','Web Application','2026-03-01','2026-07-01','2026-07-09',530000,555000,'Medium','Completed','Client Feedback'),
(586,'Automated Release Pipeline','DevOps','2026-04-01','2026-08-01','2026-07-25',490000,475000,'High','Completed',NULL),
(587,'Service Health Dashboard','Data Analytics','2026-04-15','2026-08-15','2026-08-22',370000,390000,'Medium','Completed','Resource Shortage'),
(588,'Secure File Transfer','Cybersecurity','2026-05-01','2026-09-01','2026-08-28',560000,545000,'High','Completed',NULL),
(589,'Customer Data Platform','Data Analytics','2026-05-15','2026-09-15','2026-09-27',950000,1010000,'High','Completed','Data Quality Issues'),
(590,'Mobile Order Tracking','Mobile Application','2026-06-01','2026-10-01',NULL,470000,260000,'Medium','In Progress',NULL),
(591,'AI Support Ticket Routing','AI/ML','2026-06-15','2026-10-15',NULL,640000,320000,'High','In Progress',NULL),
(592,'Contract Lifecycle Portal','SaaS','2026-07-01','2026-11-01',NULL,580000,230000,'Medium','In Progress',NULL),
(593,'API Security Upgrade','Cybersecurity','2026-07-15','2026-11-15',NULL,520000,210000,'High','In Progress',NULL),
(594,'Executive KPI Platform','Data Analytics','2026-08-01','2026-12-01',NULL,430000,140000,'High','In Progress',NULL),
(595,'Retail Mobile Checkout','Mobile Application','2026-08-10','2026-12-10',NULL,760000,120000,'High','In Progress',NULL),
(596,'Automated Data Validation','Data Analytics','2026-08-20','2027-01-20',NULL,390000,85000,'Medium','In Progress',NULL),
(597,'Cloud Disaster Recovery','Cloud Migration','2026-09-01','2027-02-01',NULL,880000,65000,'High','In Progress',NULL),
(598,'Employee Wellness Portal','SaaS','2026-09-10','2027-02-10',NULL,340000,40000,'Low','In Progress',NULL),
(599,'AI Knowledge Assistant','AI/ML','2026-09-20','2027-03-20',NULL,790000,30000,'High','In Progress',NULL),
(600,'Data Access Governance','Cybersecurity','2026-10-01','2027-04-01',NULL,610000,15000,'High','In Progress',NULL);

SELECT * FROM Projects;

INSERT INTO Tasks
(Task_ID, Emp_ID, Proj_ID, Task_Name, Assigned_Date,
 Due_Date, Completion_Date, Estimated_Hours, Actual_Hours,
 Task_Status, Quality_Score, Workflow_Stage)
VALUES
(1001,101,501,'Design login page','2025-01-10','2025-01-20','2025-01-19',16,15,'Completed',92,'Review'),
(1002,102,501,'Build login API','2025-01-12','2025-01-25','2025-01-24',24,26,'Completed',88,'Deployment'),
(1003,103,501,'Test login workflow','2025-01-20','2025-01-28','2025-01-28',12,12,'Completed',95,'Review'),
(1004,104,502,'Clean sales dataset','2025-01-20','2025-02-05','2025-02-08',20,25,'Completed',84,'Review'),
(1005,105,502,'Prepare KPI report','2025-02-01','2025-02-15','2025-02-14',18,17,'Completed',91,'Deployment'),
(1006,106,503,'Create inventory schema','2025-02-05','2025-02-20','2025-02-18',20,19,'Completed',94,'Deployment'),
(1007,107,503,'Develop stock API','2025-02-15','2025-03-01','2025-03-05',28,34,'Completed',80,'Review'),
(1008,108,504,'Design mobile screens','2025-02-15','2025-03-05','2025-03-04',22,21,'Completed',93,'Deployment'),
(1009,109,504,'Implement navigation','2025-03-01','2025-03-15','2025-03-18',24,29,'Completed',82,'Review'),
(1010,110,505,'Create employee form','2025-03-05','2025-03-20','2025-03-19',16,15,'Completed',90,'Deployment'),
(1011,111,505,'Validate employee data','2025-03-10','2025-03-25','2025-03-25',14,14,'Completed',96,'Review'),
(1012,112,506,'Prepare training data','2025-03-20','2025-04-10','2025-04-14',30,36,'Completed',79,'Review'),
(1013,113,506,'Train prediction model','2025-04-01','2025-04-25','2025-04-24',35,33,'Completed',91,'Deployment'),
(1014,114,507,'Build product catalog','2025-04-05','2025-04-25','2025-04-27',26,30,'Completed',85,'Review'),
(1015,115,507,'Integrate cart service','2025-04-15','2025-05-10','2025-05-09',32,30,'Completed',92,'Deployment'),
(1016,116,508,'Design attendance flow','2025-04-20','2025-05-05','2025-05-05',18,18,'Completed',94,'Review'),
(1017,117,508,'Implement check-in','2025-05-01','2025-05-20','2025-05-24',24,29,'Completed',81,'Deployment'),
(1018,118,509,'Prepare finance metrics','2025-05-10','2025-05-25','2025-05-23',20,18,'Completed',93,'Deployment'),
(1019,119,509,'Validate finance totals','2025-05-15','2025-06-01','2025-06-01',16,16,'Completed',97,'Review'),
(1020,120,510,'Audit cloud resources','2025-05-20','2025-06-15','2025-06-18',25,30,'Completed',83,'Review'),
(1021,121,510,'Migrate file storage','2025-06-01','2025-06-30','2025-06-28',36,34,'Completed',92,'Deployment'),
(1022,122,511,'Analyze product usage','2025-06-05','2025-06-25','2025-06-25',22,22,'Completed',94,'Review'),
(1023,123,511,'Build recommendation API','2025-06-15','2025-07-10','2025-07-14',30,36,'Completed',80,'Deployment'),
(1024,124,512,'Map chatbot intents','2025-06-20','2025-07-05','2025-07-04',18,17,'Completed',91,'Review'),
(1025,125,512,'Connect chatbot service','2025-07-01','2025-07-20','2025-07-25',28,34,'Completed',78,'Deployment'),
(1026,126,513,'Define vendor fields','2025-07-05','2025-07-20','2025-07-19',16,15,'Completed',93,'Review'),
(1027,127,513,'Build vendor API','2025-07-15','2025-08-05','2025-08-05',26,26,'Completed',90,'Deployment'),
(1028,128,514,'Clean campaign data','2025-07-20','2025-08-10','2025-08-13',24,28,'Completed',84,'Review'),
(1029,129,514,'Build campaign dashboard','2025-08-01','2025-08-25','2025-08-24',30,29,'Completed',95,'Deployment'),
(1030,130,515,'Design learning modules','2025-08-05','2025-08-25','2025-08-25',22,22,'Completed',92,'Review'),
(1031,131,515,'Implement course tracking','2025-08-15','2025-09-10','2025-09-13',32,36,'Completed',83,'Deployment'),
(1032,132,516,'Create bug categories','2025-08-20','2025-09-05','2025-09-04',14,13,'Completed',94,'Review'),
(1033,133,516,'Build issue workflow','2025-09-01','2025-09-20','2025-09-24',24,29,'Completed',82,'Deployment'),
(1034,134,517,'Prepare fraud indicators','2025-09-05','2025-09-25','2025-09-24',26,25,'Completed',93,'Review'),
(1035,135,517,'Evaluate fraud model','2025-09-15','2025-10-10','2025-10-14',34,40,'Completed',79,'Deployment'),
(1036,136,518,'Design self-service form','2025-09-20','2025-10-05','2025-10-05',18,18,'Completed',92,'Review'),
(1037,137,518,'Implement profile updates','2025-10-01','2025-10-20','2025-10-24',26,31,'Completed',84,'Deployment'),
(1038,138,519,'Create route tracking API','2025-10-05','2025-10-25','2025-10-23',28,26,'Completed',95,'Review'),
(1039,139,519,'Test tracking alerts','2025-10-15','2025-11-05','2025-11-05',18,18,'Completed',96,'Deployment'),
(1040,140,520,'Design warehouse tables','2025-10-20','2025-11-15','2025-11-18',30,35,'Completed',82,'Review'),
(1041,141,520,'Build ETL pipeline','2025-11-01','2025-12-01','2025-12-04',36,40,'Completed',85,'Deployment'),
(1042,142,521,'Design booking calendar','2025-11-05','2025-11-20','2025-11-19',20,19,'Completed',93,'Review'),
(1043,143,521,'Implement booking API','2025-11-15','2025-12-05','2025-12-05',28,28,'Completed',91,'Deployment'),
(1044,144,522,'Define billing rules','2025-11-20','2025-12-10','2025-12-14',24,29,'Completed',82,'Review'),
(1045,145,522,'Test subscription renewal','2025-12-01','2025-12-20','2025-12-19',20,19,'Completed',94,'Deployment'),
(1046,146,523,'Redesign home page','2025-12-05','2025-12-20','2025-12-18',18,16,'Completed',95,'Deployment'),
(1047,147,523,'Check responsive layout','2025-12-10','2025-12-28','2025-12-28',16,16,'Completed',93,'Review'),
(1048,148,524,'Prepare forecast dataset','2025-12-15','2026-01-10','2026-01-13',26,31,'Completed',81,'Review'),
(1049,149,524,'Evaluate forecast accuracy','2026-01-01','2026-01-25','2026-01-24',30,28,'Completed',94,'Deployment'),
(1050,150,525,'Create asset inventory','2026-01-05','2026-01-20','2026-01-20',18,18,'Completed',92,'Review'),
(1051,151,525,'Add asset assignment flow','2026-01-10','2026-01-30','2026-02-02',24,28,'Completed',84,'Deployment'),
(1052,152,526,'Integrate payment API','2026-01-15','2026-02-10','2026-02-14',32,38,'Completed',80,'Review'),
(1053,153,526,'Test payment failures','2026-02-01','2026-02-20','2026-02-19',22,21,'Completed',95,'Deployment'),
(1054,154,527,'Analyze customer feedback','2026-02-05','2026-02-20','2026-02-20',20,20,'Completed',94,'Review'),
(1055,155,527,'Create sentiment report','2026-02-10','2026-02-28','2026-03-02',18,21,'Completed',85,'Deployment'),
(1056,156,528,'Build appointment API','2026-02-15','2026-03-10','2026-03-09',30,28,'Completed',93,'Review'),
(1057,157,528,'Test appointment booking','2026-03-01','2026-03-20','2026-03-24',22,27,'Completed',82,'Deployment'),
(1058,158,529,'Move application services','2026-03-05','2026-03-30','2026-03-28',34,32,'Completed',94,'Review'),
(1059,159,529,'Verify cloud performance','2026-03-15','2026-04-10','2026-04-10',24,24,'Completed',96,'Deployment'),
(1060,160,530,'Define quality KPIs','2026-03-20','2026-04-05','2026-04-08',16,19,'Completed',84,'Review'),
(1061,161,530,'Build monitoring report','2026-04-01','2026-04-20','2026-04-19',22,21,'Completed',93,'Deployment'),
(1062,162,531,'Prepare retail demand data','2026-04-05','2026-04-25','2026-04-25',26,26,'Completed',92,'Review'),
(1063,163,531,'Test demand predictions','2026-04-15','2026-05-10','2026-05-14',30,36,'Completed',80,'Deployment'),
(1064,164,532,'Build team messaging API','2026-04-20','2026-05-10','2026-05-09',24,23,'Completed',94,'Review'),
(1065,165,532,'Test notification delivery','2026-05-01','2026-05-20','2026-05-20',18,18,'Completed',95,'Deployment'),
(1066,166,533,'Define approval stages','2026-05-05','2026-05-20','2026-05-23',16,19,'Completed',83,'Review'),
(1067,167,533,'Implement approval rules','2026-05-15','2026-06-05','2026-06-04',24,23,'Completed',93,'Deployment'),
(1068,168,534,'Scan application risks','2026-05-20','2026-06-10','2026-06-13',22,26,'Completed',84,'Review'),
(1069,169,534,'Prepare audit summary','2026-06-01','2026-06-20','2026-06-20',18,18,'Completed',96,'Deployment'),
(1070,170,535,'Segment customer groups','2026-06-05','2026-06-25','2026-06-24',24,23,'Completed',94,'Review'),
(1071,171,535,'Validate segment profiles','2026-06-15','2026-07-05','2026-07-09',18,22,'Completed',82,'Deployment'),
(1072,172,536,'Create inventory screens','2026-06-20','2026-07-10',NULL,22,15,'In Progress',NULL,'Development'),
(1073,173,536,'Build stock synchronization','2026-07-01','2026-07-25',NULL,30,20,'In Progress',NULL,'Development'),
(1074,174,537,'Prepare resume dataset','2026-07-05','2026-07-25',NULL,24,18,'In Progress',NULL,'Analysis'),
(1075,175,537,'Evaluate screening model','2026-07-15','2026-08-10',NULL,32,21,'In Progress',NULL,'Development'),
(1076,176,538,'Define resource allocation','2026-07-20','2026-08-05',NULL,20,12,'In Progress',NULL,'Analysis'),
(1077,177,538,'Build planning dashboard','2026-08-01','2026-08-25',NULL,26,15,'In Progress',NULL,'Development'),
(1078,178,539,'Design expense form','2026-08-05','2026-08-20',NULL,18,10,'In Progress',NULL,'Development'),
(1079,179,539,'Implement receipt upload','2026-08-15','2026-09-05',NULL,24,12,'In Progress',NULL,'Development'),
(1080,180,540,'Create data quality rules','2026-08-20','2026-09-10',NULL,22,9,'In Progress',NULL,'Analysis'),
(1081,181,540,'Build quality alerts','2026-09-01','2026-09-25',NULL,26,8,'In Progress',NULL,'Development'),
(1082,182,541,'Design API access rules','2026-09-05','2026-09-25',NULL,20,6,'In Progress',NULL,'Analysis'),
(1083,183,541,'Implement API gateway','2026-09-15','2026-10-10',NULL,30,5,'In Progress',NULL,'Development'),
(1084,184,542,'Analyze cloud expenses','2026-09-20','2026-10-10',NULL,18,4,'In Progress',NULL,'Analysis'),
(1085,185,542,'Implement cost alerts','2026-10-01','2026-10-25',NULL,24,3,'In Progress',NULL,'Development'),
(1086,186,543,'Design loyalty rewards','2026-10-05','2026-10-25',NULL,22,2,'In Progress',NULL,'Analysis'),
(1087,187,543,'Build rewards API','2026-10-10','2026-11-05',NULL,28,1,'In Progress',NULL,'Development'),
(1088,188,544,'Create test automation plan','2026-10-12','2026-11-01',NULL,20,0,'Pending',NULL,'Analysis'),
(1089,189,544,'Automate regression tests','2026-10-14','2026-11-15',NULL,30,0,'Pending',NULL,'Development'),
(1090,190,545,'Define business KPIs','2026-10-15','2026-11-05',NULL,18,0,'Pending',NULL,'Analysis'),
(1091,191,545,'Create KPI charts','2026-10-15','2026-11-20',NULL,24,0,'Pending',NULL,'Development'),
(1092,192,546,'Analyze supply chain data','2026-10-15','2026-11-10',NULL,26,0,'Pending',NULL,'Analysis'),
(1093,193,546,'Build supply chain report','2026-10-15','2026-11-25',NULL,28,0,'Pending',NULL,'Development'),
(1094,194,547,'Review access policies','2026-10-15','2026-11-10',NULL,22,0,'Pending',NULL,'Analysis'),
(1095,195,547,'Implement identity checks','2026-10-15','2026-11-30',NULL,30,0,'Pending',NULL,'Development'),
(1096,196,548,'Prepare document samples','2026-10-15','2026-11-15',NULL,20,0,'Pending',NULL,'Analysis'),
(1097,197,548,'Train document classifier','2026-10-15','2026-12-05',NULL,32,0,'Pending',NULL,'Development'),
(1098,198,549,'Review booking issues','2026-10-15','2026-11-10',NULL,18,0,'Pending',NULL,'Analysis'),
(1099,199,550,'Design pipeline checks','2026-10-15','2026-11-15',NULL,22,0,'Pending',NULL,'Analysis'),
(1100,200,550,'Build pipeline monitor','2026-10-15','2026-12-01',NULL,30,0,'Pending',NULL,'Development');

SELECT * FROM Tasks;

-- 1. Check employee records
SELECT COUNT(*) AS Total_Employees
FROM Employees;

-- 2. Check project records
SELECT COUNT(*) AS Total_Projects
FROM Projects;

-- 3. Check task records
SELECT COUNT(*) AS Total_Tasks
FROM Tasks;

-- 4. Check table relationships
SELECT
    t.Task_ID,
    e.Emp_Name,
    p.Proj_Name,
    t.Task_Name,
    t.Task_Status
FROM Tasks t
JOIN Employees e
    ON t.Emp_ID = e.Emp_ID
JOIN Projects p
    ON t.Proj_ID = p.Proj_ID
LIMIT 10;

USE IT_Project_Analytics;

-- 1. Depatment -wish Employees count
SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department
ORDER BY Total_Employees DESC;

-- 2. Project Status Analysis
SELECT Proj_Status, count(*) AS Total_Project
FROM Projects
GROUP BY Proj_Status ORDER BY Total_Project DESC;

USE IT_Project_Analytics;

-- 3. Depatment -wish project Analysis
SELECT
    e.Department,
    COUNT(DISTINCT p.Proj_ID) AS Total_Projects
FROM Employees e
JOIN Tasks t
    ON e.Emp_ID = t.Emp_ID
JOIN Projects p
    ON t.Proj_ID = p.Proj_ID
GROUP BY e.Department
ORDER BY Total_Projects DESC;

-- 4. Planned Budget & Actual Cost
SELECT
    Proj_ID,
    Proj_Name,
    Planned_Budget,
    Actual_Cost,
    (Actual_Cost - Planned_Budget) AS Budget_Difference
FROM Projects
ORDER BY Budget_Difference DESC;

-- 5. Projects Completed After Deadline
SELECT
    Proj_ID,
    Proj_Name,
    Deadline,
    Actual_Completion_Date,
    DATEDIFF(Actual_Completion_Date, Deadline) AS Delay_Days
FROM Projects
WHERE Actual_Completion_Date IS NOT NULL
  AND Actual_Completion_Date > Deadline
ORDER BY Delay_Days DESC;

-- 6. Employee-wise Completed Tasks
SELECT
    e.Emp_ID,
    e.Emp_Name,
    e.Department,
    COUNT(t.Task_ID) AS Completed_Tasks
FROM Employees e
JOIN Tasks t
    ON e.Emp_ID = t.Emp_ID
WHERE t.Task_Status = 'Completed'
GROUP BY
    e.Emp_ID,
    e.Emp_Name,
    e.Department
ORDER BY Completed_Tasks DESC;

-- 7. Task Status Distribution
SELECT
    Task_Status,
    COUNT(*) AS Total_Tasks
FROM Tasks
GROUP BY Task_Status
ORDER BY Total_Tasks DESC;

-- 8. Average Task Completion Time
SELECT
    Task_ID,
    Task_Name,
    Assigned_Date,
    Completion_Date,
    DATEDIFF(Completion_Date, Assigned_Date) AS Completion_Days
FROM Tasks
WHERE Task_Status = 'Completed'
  AND Completion_Date IS NOT NULL
ORDER BY Completion_Days DESC;

-- Average days calculate panna:
SELECT
    AVG(DATEDIFF(Completion_Date, Assigned_Date))
        AS Average_Completion_Days
FROM Tasks
WHERE Task_Status = 'Completed'
  AND Completion_Date IS NOT NULL;
  
-- 9. Employee-wise Average Quality Score
SELECT
    e.Emp_ID,
    e.Emp_Name,
    AVG(t.Quality_Score) AS Average_Quality_Score
FROM Employees e
JOIN Tasks t
    ON e.Emp_ID = t.Emp_ID
GROUP BY
    e.Emp_ID,
    e.Emp_Name
ORDER BY Average_Quality_Score DESC;

-- 10. Employee Working Hours Analysis
SELECT
    e.Emp_ID,
    e.Emp_Name,
    SUM(t.Actual_Hours) AS Total_Working_Hours
FROM Employees e
JOIN Tasks t
    ON e.Emp_ID = t.Emp_ID
GROUP BY
    e.Emp_ID,
    e.Emp_Name
ORDER BY Total_Working_Hours DESC;

-- 11. Estimated vs Actual Task Hours
SELECT
    Task_ID,
    Task_Name,
    Estimated_Hours,
    Actual_Hours,
    (Actual_Hours - Estimated_Hours) AS Hours_Difference
FROM Tasks
ORDER BY Hours_Difference DESC;

-- 12. Average Experience by Department
 SELECT
	Department,
    COUNT(*) AS Total_Employees,
    AVG(Experience_Years) AS Average_Experience
FROM Employees
GROUP BY Department
ORDER BY Average_Experience DESC;

-- 13. Project Priority & Risk Analysis
USE IT_Project_Analytics;

SELECT
    Proj_ID,
    Proj_Name,
    Piority,
    Proj_Status,
    Planned_Budget,
    Actual_Cost,

    (Actual_Cost - Planned_Budget) AS Budget_Overrun,

    CASE
        WHEN Proj_Status = 'Cancelled'
            THEN 'Cancelled Project'

        WHEN Actual_Cost > Planned_Budget
             AND Piority = 'High'
            THEN 'High Priority - Over Budget'

        WHEN Actual_Cost > Planned_Budget
            THEN 'Budget Risk'

        WHEN Proj_Status = 'On Hold'
            THEN 'Project On Hold'

        ELSE 'Normal Monitoring'
    END AS Project_Risk_Category

FROM Projects

ORDER BY
    CASE
        WHEN Proj_Status = 'Cancelled' THEN 1
        WHEN Actual_Cost > Planned_Budget
             AND Piority = 'High' THEN 2
        WHEN Actual_Cost > Planned_Budget THEN 3
        WHEN Proj_Status = 'On Hold' THEN 4
        ELSE 5
    END,
Budget_Overrun DESC;


-- 14. Employee Performance Ranking
WITH EmployeePerformance AS (
    SELECT
        e.Emp_ID,
        e.Emp_Name,
        e.Department,
        COUNT(t.Task_ID) AS Completed_Tasks
    FROM Employees e
    JOIN Tasks t
        ON e.Emp_ID = t.Emp_ID
    WHERE t.Task_Status = 'Completed'
    GROUP BY
        e.Emp_ID,
        e.Emp_Name,
        e.Department
)

SELECT
    Emp_ID,
    Emp_Name,
    Department,
    Completed_Tasks,
    RANK() OVER (
        ORDER BY Completed_Tasks DESC
    ) AS Performance_Rank
FROM EmployeePerformance
ORDER BY Performance_Rank;

-- 15. Department-wise Task Performance
SELECT
    e.Department,
    COUNT(DISTINCT e.Emp_ID) AS Total_Employees,
    COUNT(t.Task_ID) AS Total_Completed_Tasks,
    ROUND(
        COUNT(t.Task_ID) / COUNT(DISTINCT e.Emp_ID),
        2
    ) AS Avg_Tasks_Per_Employee
FROM Employees e
JOIN Tasks t
    ON e.Emp_ID = t.Emp_ID
WHERE t.Task_Status = 'Completed'
GROUP BY e.Department
ORDER BY Avg_Tasks_Per_Employee DESC;

-- 16. Project Budget Variance Analysis
USE IT_Project_Analytics;

SELECT
    Proj_ID,
    Proj_Name,
    Planned_Budget,
    Actual_Cost,
    Actual_Cost - Planned_Budget AS Budget_Difference,
    CASE
        WHEN Actual_Cost > Planned_Budget THEN 'Over Budget'
        WHEN Actual_Cost < Planned_Budget THEN 'Under Budget'
        ELSE 'On Budget'
    END AS Budget_Status
FROM Projects
ORDER BY Budget_Difference DESC;

-- 17. Department-wise Completed Task Analysis
SELECT
    e.Department,
    COUNT(t.Task_ID) AS Total_Completed_Tasks
FROM Employees e
INNER JOIN Tasks t
    ON e.Emp_ID = t.Emp_ID
WHERE t.Task_Status = 'Completed'
GROUP BY e.Department
HAVING COUNT(t.Task_ID) > 5
ORDER BY Total_Completed_Tasks DESC;

-- 18. Department-wise Employee Performance Ranking Using DENSE_RANK()

WITH EmployeeTaskCounts AS (
    SELECT
        e.Emp_ID,
        e.Emp_Name,
        e.Department,
        COUNT(
            CASE
                WHEN t.Task_Status = 'Completed'
                THEN t.Task_ID
            END
        ) AS Completed_Tasks
    FROM Employees e
    LEFT JOIN Tasks t
        ON e.Emp_ID = t.Emp_ID
    GROUP BY
        e.Emp_ID,
        e.Emp_Name,
        e.Department
)

SELECT
    Emp_ID,
    Emp_Name,
    Department,
    Completed_Tasks,
    DENSE_RANK() OVER (
        PARTITION BY Department
        ORDER BY Completed_Tasks DESC
    ) AS Department_Rank
FROM EmployeeTaskCounts
ORDER BY Department, Department_Rank, Emp_ID;

-- 19. Department-wise Project Budget Overrun Analysis
SELECT
    e.Department,
    COUNT(DISTINCT p.Proj_ID) AS Total_Projects,
    SUM(p.Planned_Budget) AS Total_Planned_Budget,
    SUM(p.Actual_Cost) AS Total_Actual_Cost,
    SUM(p.Actual_Cost - p.Planned_Budget) AS Total_Budget_Difference,
    CASE
        WHEN SUM(p.Actual_Cost) > SUM(p.Planned_Budget)
            THEN 'Over Budget'
        WHEN SUM(p.Actual_Cost) < SUM(p.Planned_Budget)
            THEN 'Under Budget'
        ELSE 'On Budget'
    END AS Budget_Status
FROM Employees e
INNER JOIN Tasks t
    ON e.Emp_ID = t.Emp_ID
INNER JOIN Projects p
    ON t.Proj_ID = p.Proj_ID
GROUP BY e.Department
ORDER BY Total_Budget_Difference DESC;

-- 20. Employees Without Any Completed Tasks Using NOT EXISTS
SELECT
    e.Emp_ID,
    e.Emp_Name,
    e.Department
FROM Employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM Tasks t
    WHERE t.Emp_ID = e.Emp_ID
      AND t.Task_Status = 'Completed'
)
ORDER BY e.Emp_ID;

-- 21. Employees Without Assigned Tasks Using LEFT JOIN
SELECT
    e.Emp_ID,
    e.Emp_Name,
    e.Department
FROM Employees e
LEFT JOIN Tasks t
    ON e.Emp_ID = t.Emp_ID
WHERE t.Task_ID IS NULL
ORDER BY e.Emp_ID;

-- 22. Task Completion Time Analysis Using CASE
SELECT
    Task_ID,
    Task_Name,
    Task_Status,
    Assigned_Date,
    Completion_Date,
    CASE
        WHEN Completion_Date IS NULL
            THEN 'Not Completed'
        WHEN DATEDIFF(Completion_Date, Due_Date) > 0
            THEN 'Delayed'
        WHEN DATEDIFF(Completion_Date, Due_Date) = 0
            THEN 'Completed On Time'
        ELSE 'Completed Early'
    END AS Completion_Performance
FROM Tasks
ORDER BY Task_ID;

-- 23. Department-wise Task Deadline Performance Analysis
  SUM(CASE
        WHEN t.Completion_Date IS NOT NULL
         AND DATEDIFF(t.Completion_Date, t.Due_Date) <= 0
        THEN 1 ELSE 0
    END) AS On_Time_Tasks,

    SUM(CASE
        WHEN t.Completion_Date IS NOT NULL
         AND DATEDIFF(t.Completion_Date, t.Due_Date) > 0
        THEN 1 ELSE 0
    END) AS Delayed_Tasks,

    SUM(CASE
        WHEN t.Completion_Date IS NULL
        THEN 1 ELSE 0
    END) AS Incomplete_Tasks

FROM Employees e
INNER JOIN Tasks t
    ON e.Employee_ID = t.Employee_ID
GROUP BY e.Department
ORDER BY Delayed_Tasks DESC;

-- 24. Combined Business Summary Using UNION ALL
USE IT_Project_Analytics;

SELECT
    'Employee Department' AS Metric_Category,
    Department AS Metric_Name,
    COUNT(*) AS Record_Count
FROM Employees
GROUP BY Department

UNION ALL

SELECT
    'Project Status' AS Metric_Category,
    Project_Status AS Metric_Name,
    COUNT(*) AS Record_Count
FROM Projects
GROUP BY Project_Status

UNION ALL

SELECT
    'Task Status' AS Metric_Category,
    Task_Status AS Metric_Name,
    COUNT(*) AS Record_Count
FROM Tasks
GROUP BY Task_Status

ORDER BY Metric_Category, Record_Count DESC;

-- 25. Search Projects Using LIKE Operator
USE IT_Project_Analytics;

SELECT
    Project_ID,
    Project_Name,
    Project_Type,
    Priority,
    Planned_Budget
FROM Projects
WHERE Project_Name LIKE '%Data%'
ORDER BY Planned_Budget DESC;

-- 26. Department-wise Task Status Comparison
USE IT_Project_Analytics;

SELECT
    e.Department,

    SUM(CASE
        WHEN t.Task_Status = 'Completed' THEN 1
        ELSE 0
    END) AS Completed_Tasks,

    SUM(CASE
        WHEN t.Task_Status = 'Pending' THEN 1
        ELSE 0
    END) AS Pending_Tasks,

    SUM(CASE
        WHEN t.Task_Status = 'In Progress' THEN 1
        ELSE 0
    END) AS In_Progress_Tasks

FROM Employees e
INNER JOIN Tasks t
    ON e.Employee_ID = t.Employee_ID

GROUP BY e.Department
ORDER BY Completed_Tasks DESC;

-- 27. Project Completion & Cost Report
USE IT_Project_Analytics;

SELECT
    Project_ID,
    Project_Name,
    Project_Status,
    Planned_Budget,
    Actual_Cost,
    COALESCE(
        CAST(Actual_Completion_Date AS CHAR),
        'Not Completed'
    ) AS Completion_Date
FROM Projects
ORDER BY Actual_Cost DESC;

-- 28. Employee Performance Segmentation Using NTILE()
USE IT_Project_Analytics;

WITH EmployeeTasks AS (
    SELECT
        e.Employee_ID,
        e.Employee_Name,
        e.Department,
        SUM(
            CASE
                WHEN t.Task_Status = 'Completed' THEN 1
                ELSE 0
            END
        ) AS Completed_Tasks
    FROM Employees e
    LEFT JOIN Tasks t
        ON e.Employee_ID = t.Employee_ID
    GROUP BY
        e.Employee_ID,
        e.Employee_Name,
        e.Department
)

SELECT
    Employee_ID,
    Employee_Name,
    Department,
    Completed_Tasks,
    NTILE(4) OVER (
        ORDER BY Completed_Tasks DESC, Employee_ID
    ) AS Performance_Group
FROM EmployeeTasks
ORDER BY Performance_Group, Completed_Tasks DESC;

-- 29. Compare Current and Previous Task Hours
USE IT_Project_Analytics;

SELECT
    Employee_ID,
    Task_ID,
    Task_Name,
    Actual_Hours,

    LAG(Actual_Hours) OVER (
        PARTITION BY Employee_ID
        ORDER BY Assigned_Date, Task_ID
    ) AS Previous_Task_Hours,

    Actual_Hours - LAG(Actual_Hours) OVER (
        PARTITION BY Employee_ID
        ORDER BY Assigned_Date, Task_ID
    ) AS Hours_Change

FROM Tasks
WHERE Actual_Hours IS NOT NULL
ORDER BY Employee_ID, Assigned_Date, Task_ID;

-- 30. Compare Current Task with the Next Task
USE IT_Project_Analytics;

SELECT
    Employee_ID,
    Task_ID,
    Task_Name,
    Assigned_Date,
    Actual_Hours,

    LEAD(Actual_Hours) OVER (
        PARTITION BY Employee_ID
        ORDER BY Assigned_Date, Task_ID
    ) AS Next_Task_Hours,

    LEAD(Actual_Hours) OVER (
        PARTITION BY Employee_ID
        ORDER BY Assigned_Date, Task_ID
    ) - Actual_Hours AS Next_Task_Hours_Difference

FROM Tasks
WHERE Actual_Hours IS NOT NULL
ORDER BY Employee_ID, Assigned_Date, Task_ID;

