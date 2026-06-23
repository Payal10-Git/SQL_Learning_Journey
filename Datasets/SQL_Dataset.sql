-- ============================================
-- Maharashtra Employee & Department Database
-- 150 Maharashtrian Employees, 15 Departments
-- ============================================

CREATE DATABASE IF NOT EXISTS maharashtra_company;
USE maharashtra_company;

-- ============================================
-- DEPARTMENT TABLE
-- ============================================
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;

CREATE TABLE department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL,
    dept_head VARCHAR(100),
    location VARCHAR(100),
    established_year INT
);

INSERT INTO department (dept_name, dept_head, location, established_year) VALUES
('Information Technology', 'Bhushan shelke', 'Pune', 2001),
('Finance', 'Ramesh Deshmukh', 'Mumbai', 1998),
('Human Resources', 'Sunita Patil', 'Nagpur', 2003),
('Sales', 'Prakash Shinde', 'Pune', 2000),
('Customer Service', 'Lata Jadhav', 'Nashik', 2005),
('Production', 'Vijay Bhosale', 'Aurangabad', 1999),
('Quality Control', 'Meena Gaikwad', 'Pune', 2002),
('Planning and Development', 'Anil Wagh', 'Mumbai', 2004),
('Legal', 'Priya More', 'Pune', 2006),
('Public Relations', 'Rajesh Pawar', 'Mumbai', 2007),
('Supply Chain', 'Sanjay Kale', 'Nagpur', 2008),
('Administration', 'Vandana Deshpande', 'Pune', 1997),
('Research and Development', 'Mohan Mane', 'Pune', 2010),
('Travel and Operations', 'Kavita Nair', 'Mumbai', 2009),
('Security', 'Ganesh Thorat', 'Nashik', 2011);

-- ============================================
-- EMPLOYEE TABLE
-- ============================================
CREATE TABLE employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    gender CHAR(1),
    date_of_birth DATE,
    date_of_joining DATE,
    dept_id INT,
    designation VARCHAR(100),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO employee (first_name, last_name, email, phone, gender, date_of_birth, date_of_joining, dept_id, designation, salary, city) VALUES
('Aaditya', 'Kulkarni', 'aaditya.kulkarni@company.com', '9823001001', 'M', '1990-04-15', '2015-06-01', 1, 'Senior Software Engineer', 85000.00, 'Pune'),
('Akash', 'Deshmukh', 'akash.deshmukh@company.com', '9823001002', 'M', '1992-07-22', '2016-03-15', 1, 'Software Engineer', 65000.00, 'Pune'),
('Amol', 'Patil', 'amol.patil@company.com', '9823001003', 'M', '1988-11-10', '2013-08-01', 2, 'Finance Manager', 90000.00, 'Mumbai'),
('Anand', 'Shinde', 'anand.shinde@company.com', '9823001004', 'M', '1991-03-25', '2017-01-10', 2, 'Accountant', 55000.00, 'Pune'),
('Anil', 'Jadhav', 'anil.jadhav@company.com', '9823001005', 'M', '1985-09-08', '2010-05-20', 3, 'HR Manager', 88000.00, 'Nagpur'),
('Aniket', 'Bhosale', 'aniket.bhosale@company.com', '9823001006', 'M', '1993-12-01', '2018-07-01', 3, 'HR Executive', 48000.00, 'Nashik'),
('Arun', 'Gaikwad', 'arun.gaikwad@company.com', '9823001007', 'M', '1989-06-14', '2014-04-15', 4, 'Sales Manager', 92000.00, 'Pune'),
('Ashish', 'Wagh', 'ashish.wagh@company.com', '9823001008', 'M', '1994-02-28', '2019-09-01', 4, 'Sales Executive', 45000.00, 'Aurangabad'),
('Balaji', 'More', 'balaji.more@company.com', '9823001009', 'M', '1987-08-17', '2012-11-01', 5, 'Customer Support Lead', 70000.00, 'Pune'),
('Bhushan', 'Patil', 'bhushan.patil@company.com', '9823001010', 'M', '1995-05-05', '2020-01-15', 5, 'Support Executive', 38000.00, 'Nashik'),
('Lokesh', 'Bhoge', 'lokesh.bhoge@company.com', '9823001011', 'M', '1990-10-20', '2015-08-01', 6, 'Production Engineer', 72000.00, 'Nagpur'),
('Priyanka', 'Sahu', 'priyanka.sahu@company.com', '9823001012', 'M', '1986-01-30', '2011-03-01', 6, 'Production Manager', 95000.00, 'Aurangabad'),
('Deepak', 'Mane', 'deepak.mane@company.com', '9823001013', 'M', '1992-04-12', '2017-06-01', 7, 'QA Engineer', 60000.00, 'Pune'),
('Devendra', 'Nair', 'devendra.nair@company.com', '9823001014', 'M', '1991-07-07', '2016-10-01', 7, 'QA Lead', 78000.00, 'Mumbai'),
('Dinesh', 'Thorat', 'dinesh.thorat@company.com', '9823001015', 'M', '1988-03-18', '2013-12-01', 8, 'Business Analyst', 82000.00, 'Pune'),
('Ganesh', 'Sawant', 'ganesh.sawant@company.com', '9823001016', 'M', '1993-09-09', '2018-02-01', 8, 'Junior Analyst', 50000.00, 'Kolhapur'),
('Girish', 'Salunkhe', 'girish.salunkhe@company.com', '9823001017', 'M', '1990-12-25', '2015-04-01', 9, 'Legal Officer', 75000.00, 'Pune'),
('Govind', 'Kadam', 'govind.kadam@company.com', '9823001018', 'M', '1985-06-11', '2010-07-01', 10, 'PR Manager', 88000.00, 'Mumbai'),
('Hari', 'Landge', 'hari.landge@company.com', '9823001019', 'M', '1994-11-14', '2019-01-01', 11, 'Supply Chain Executive', 52000.00, 'Nagpur'),
('Hemant', 'Mohite', 'hemant.mohite@company.com', '9823001020', 'M', '1989-02-22', '2014-09-01', 12, 'Admin Executive', 47000.00, 'Pune'),
('Jitendra', 'Ghuge', 'jitendra.ghuge@company.com', '9823001021', 'M', '1991-08-06', '2016-05-01', 13, 'Research Analyst', 68000.00, 'Pune'),
('Kailas', 'Chavan', 'kailas.chavan@company.com', '9823001022', 'M', '1987-04-19', '2012-08-01', 14, 'Travel Coordinator', 55000.00, 'Mumbai'),
('Kedar', 'Tambe', 'kedar.tambe@company.com', '9823001023', 'M', '1993-01-28', '2018-04-01', 15, 'Security Officer', 42000.00, 'Nashik'),
('Kishor', 'Bankar', 'kishor.bankar@company.com', '9823001024', 'M', '1986-10-31', '2011-10-01', 1, 'Tech Lead', 98000.00, 'Pune'),
('Laxman', 'Parab', 'laxman.parab@company.com', '9823001025', 'M', '1992-06-13', '2017-08-01', 2, 'Financial Analyst', 72000.00, 'Pune'),
('Madhav', 'Surve', 'madhav.surve@company.com', '9823001026', 'M', '1990-09-24', '2015-11-01', 3, 'Recruitment Specialist', 58000.00, 'Pune'),
('Mahesh', 'Kamble', 'mahesh.kamble@company.com', '9823001027', 'M', '1988-05-02', '2013-03-01', 4, 'Area Sales Manager', 85000.00, 'Aurangabad'),
('Mangesh', 'Raut', 'mangesh.raut@company.com', '9823001028', 'M', '1995-03-16', '2020-06-01', 5, 'Support Engineer', 40000.00, 'Nagpur'),
('Milind', 'Nikam', 'milind.nikam@company.com', '9823001029', 'M', '1989-11-29', '2014-07-01', 6, 'Plant Supervisor', 80000.00, 'Aurangabad'),
('Mohan', 'Bhakare', 'mohan.bhakare@company.com', '9823001030', 'M', '1991-04-08', '2016-01-01', 7, 'Test Engineer', 62000.00, 'Pune'),
('Mukesh', 'Sonawane', 'mukesh.sonawane@company.com', '9823001031', 'M', '1987-07-21', '2012-05-01', 8, 'Strategy Lead', 92000.00, 'Mumbai'),
('Nagesh', 'Pote', 'nagesh.pote@company.com', '9823001032', 'M', '1993-12-04', '2018-10-01', 9, 'Compliance Officer', 70000.00, 'Pune'),
('Narendra', 'Waghmare', 'narendra.waghmare@company.com', '9823001033', 'M', '1990-08-15', '2015-09-01', 10, 'Brand Executive', 65000.00, 'Mumbai'),
('Nikhil', 'Shirke', 'nikhil.shirke@company.com', '9823001034', 'M', '1994-02-11', '2019-04-01', 11, 'Logistics Coordinator', 48000.00, 'Pune'),
('Nilesh', 'Jedhe', 'nilesh.jedhe@company.com', '9823001035', 'M', '1988-06-27', '2013-06-01', 12, 'Office Manager', 60000.00, 'Nashik'),
('Omkar', 'Gorde', 'omkar.gorde@company.com', '9823001036', 'M', '1992-10-03', '2017-03-01', 13, 'Innovation Analyst', 72000.00, 'Pune'),
('Pandurang', 'Malkar', 'pandurang.malkar@company.com', '9823001037', 'M', '1985-01-14', '2010-09-01', 14, 'Travel Manager', 80000.00, 'Mumbai'),
('Paresh', 'Khade', 'paresh.khade@company.com', '9823001038', 'M', '1991-05-26', '2016-07-01', 15, 'Safety Inspector', 55000.00, 'Pune'),
('Prafull', 'Bhamre', 'prafull.bhamre@company.com', '9823001039', 'M', '1989-09-10', '2014-11-01', 1, 'DevOps Engineer', 88000.00, 'Pune'),
('Prakash', 'Suryavanshi', 'prakash.suryavanshi@company.com', '9823001040', 'M', '1986-03-04', '2011-02-01', 2, 'Senior Accountant', 75000.00, 'Nashik'),
('Pramod', 'Hiray', 'pramod.hiray@company.com', '9823001041', 'M', '1993-07-18', '2018-08-01', 3, 'Training Officer', 54000.00, 'Aurangabad'),
('Prasad', 'Doke', 'prasad.doke@company.com', '9823001042', 'M', '1990-11-30', '2015-12-01', 4, 'Business Dev Executive', 68000.00, 'Pune'),
('Prashant', 'Navale', 'prashant.navale@company.com', '9823001043', 'M', '1988-04-22', '2013-10-01', 5, 'Customer Relations Manager', 78000.00, 'Kolhapur'),
('Praveen', 'Bagal', 'praveen.bagal@company.com', '9823001044', 'M', '1994-08-07', '2019-07-01', 6, 'Quality Inspector', 46000.00, 'Nagpur'),
('Rahul', 'Gavhane', 'rahul.gavhane@company.com', '9823001045', 'M', '1991-12-19', '2016-11-01', 7, 'QA Manager', 85000.00, 'Pune'),
('Rajendra', 'Lahane', 'rajendra.lahane@company.com', '9823001046', 'M', '1987-06-01', '2012-02-01', 8, 'Planning Manager', 90000.00, 'Mumbai'),
('Rajesh', 'Tupe', 'rajesh.tupe@company.com', '9823001047', 'M', '1992-03-13', '2017-05-01', 9, 'Legal Advisor', 82000.00, 'Pune'),
('Rakesh', 'Gavit', 'rakesh.gavit@company.com', '9823001048', 'M', '1989-07-25', '2014-02-01', 10, 'Media Manager', 72000.00, 'Mumbai'),
('Ram', 'Pokharkar', 'ram.pokharkar@company.com', '9823001049', 'M', '1986-11-08', '2011-07-01', 11, 'Supply Chain Manager', 85000.00, 'Nagpur'),
('Ramesh', 'Khandagale', 'ramesh.khandagale@company.com', '9823001050', 'M', '1993-05-21', '2018-01-01', 12, 'Facilities Manager', 70000.00, 'Pune'),
('Ravi', 'Padwal', 'ravi.padwal@company.com', '9823001051', 'M', '1990-02-09', '2015-07-01', 13, 'R&D Engineer', 76000.00, 'Pune'),
('Ravindra', 'Bagde', 'ravindra.bagde@company.com', '9823001052', 'M', '1988-08-23', '2013-04-01', 14, 'Travel Desk Officer', 58000.00, 'Mumbai'),
('Sachin', 'Kumbhar', 'sachin.kumbhar@company.com', '9823001053', 'M', '1994-12-06', '2019-10-01', 15, 'Security Manager', 62000.00, 'Pune'),
('Sainath', 'Gavande', 'sainath.gavande@company.com', '9823001054', 'M', '1991-06-18', '2016-02-01', 1, 'Cloud Engineer', 82000.00, 'Pune'),
('Sameer', 'Dhone', 'sameer.dhone@company.com', '9823001055', 'M', '1987-10-31', '2012-09-01', 2, 'Tax Consultant', 78000.00, 'Nashik'),
('Sanjay', 'Kolhe', 'sanjay.kolhe@company.com', '9823001056', 'M', '1990-04-14', '2015-10-01', 3, 'Payroll Manager', 68000.00, 'Nagpur'),
('Santosh', 'Rode', 'santosh.rode@company.com', '9823001057', 'M', '1992-01-27', '2017-07-01', 4, 'Key Account Manager', 80000.00, 'Aurangabad'),
('Sharad', 'Mashe', 'sharad.mashe@company.com', '9823001058', 'M', '1985-05-10', '2010-03-01', 5, 'Head - Customer Service', 95000.00, 'Pune'),
('Shivaji', 'Hirekar', 'shivaji.hirekar@company.com', '9823001059', 'M', '1993-09-22', '2018-11-01', 6, 'Shift Supervisor', 56000.00, 'Kolhapur'),
('Shrikant', 'Gondkar', 'shrikant.gondkar@company.com', '9823001060', 'M', '1988-02-05', '2013-01-01', 7, 'Test Lead', 75000.00, 'Pune'),
('Shreyas', 'Choughule', 'shreyas.choughule@company.com', '9823001061', 'M', '1994-06-17', '2019-05-01', 8, 'Business Analyst', 60000.00, 'Nashik'),
('Siddhesh', 'Karawade', 'siddhesh.karawade@company.com', '9823001062', 'M', '1991-10-29', '2016-08-01', 9, 'Contract Manager', 72000.00, 'Pune'),
('Sudhir', 'Dhamane', 'sudhir.dhamane@company.com', '9823001063', 'M', '1987-03-12', '2012-06-01', 10, 'Digital Marketing Lead', 76000.00, 'Mumbai'),
('Sunil', 'Ghate', 'sunil.ghate@company.com', '9823001064', 'M', '1990-07-24', '2015-01-01', 11, 'Warehouse Manager', 72000.00, 'Nagpur'),
('Suresh', 'Borse', 'suresh.borse@company.com', '9823001065', 'M', '1986-12-07', '2011-05-01', 12, 'Senior Admin Officer', 65000.00, 'Pune'),
('Tushar', 'Wadekar', 'tushar.wadekar@company.com', '9823001066', 'M', '1993-04-19', '2018-06-01', 13, 'Product Researcher', 70000.00, 'Pune'),
('Uday', 'Khaire', 'uday.khaire@company.com', '9823001067', 'M', '1989-08-31', '2014-03-01', 14, 'Ground Operations', 50000.00, 'Mumbai'),
('Umesh', 'Wavare', 'umesh.wavare@company.com', '9823001068', 'M', '1992-01-13', '2017-10-01', 15, 'Security Analyst', 58000.00, 'Pune'),
('Vaibhav', 'Zodape', 'vaibhav.zodape@company.com', '9823001069', 'M', '1990-05-26', '2015-03-01', 1, 'Data Engineer', 86000.00, 'Pune'),
('Vijay', 'Chate', 'vijay.chate@company.com', '9823001070', 'M', '1988-09-08', '2013-07-01', 2, 'Budget Analyst', 74000.00, 'Mumbai'),
('Vikram', 'Pagare', 'vikram.pagare@company.com', '9823001071', 'M', '1994-02-21', '2019-02-01', 3, 'Talent Acquisition', 52000.00, 'Nashik'),
('Vinay', 'Garje', 'vinay.garje@company.com', '9823001072', 'M', '1991-06-04', '2016-04-01', 4, 'Channel Sales Manager', 82000.00, 'Aurangabad'),
('Vinit', 'Birhade', 'vinit.birhade@company.com', '9823001073', 'M', '1987-10-17', '2012-03-01', 5, 'Support Team Leader', 68000.00, 'Nashik'),
('Vishal', 'Khomane', 'vishal.khomane@company.com', '9823001074', 'M', '1993-03-01', '2018-09-01', 6, 'Production Technician', 50000.00, 'Nagpur'),
('Vitthal', 'Dhanawade', 'vitthal.dhanawade@company.com', '9823001075', 'M', '1990-07-14', '2015-05-01', 7, 'Automation Tester', 66000.00, 'Pune'),
-- Female Employees
('Aishwarya', 'Kulkarni', 'aishwarya.kulkarni@company.com', '9823002001', 'F', '1991-04-03', '2016-06-01', 1, 'Full Stack Developer', 78000.00, 'Pune'),
('Amruta', 'Deshmukh', 'amruta.deshmukh@company.com', '9823002002', 'F', '1993-08-16', '2018-01-01', 2, 'Junior Accountant', 48000.00, 'Pune'),
('Anuja', 'Patil', 'anuja.patil@company.com', '9823002003', 'F', '1989-12-29', '2014-09-01', 3, 'HR Business Partner', 80000.00, 'Nagpur'),
('Archana', 'Shinde', 'archana.shinde@company.com', '9823002004', 'F', '1992-05-12', '2017-04-01', 4, 'Sales Coordinator', 55000.00, 'Mumbai'),
('Ashwini', 'Jadhav', 'ashwini.jadhav@company.com', '9823002005', 'F', '1990-09-25', '2015-08-01', 5, 'Customer Success Manager', 72000.00, 'Pune'),
('Bhagyashri', 'Bhosale', 'bhagyashri.bhosale@company.com', '9823002006', 'F', '1987-01-08', '2012-11-01', 6, 'Production Head', 96000.00, 'Aurangabad'),
('Chhaya', 'Gaikwad', 'chhaya.gaikwad@company.com', '9823002007', 'F', '1994-07-21', '2019-03-01', 7, 'QA Analyst', 54000.00, 'Pune'),
('Deepali', 'Wagh', 'deepali.wagh@company.com', '9823002008', 'F', '1991-11-03', '2016-09-01', 8, 'Project Analyst', 68000.00, 'Nashik'),
('Dipti', 'More', 'dipti.more@company.com', '9823002009', 'F', '1988-04-16', '2013-05-01', 9, 'Legal Associate', 66000.00, 'Pune'),
('Gauri', 'Pawar', 'gauri.pawar@company.com', '9823002010', 'F', '1993-08-29', '2018-12-01', 10, 'PR Executive', 56000.00, 'Mumbai'),
('Jayashri', 'Kale', 'jayashri.kale@company.com', '9823002011', 'F', '1990-12-12', '2015-10-01', 11, 'Inventory Analyst', 60000.00, 'Nagpur'),
('Jyoti', 'Deshpande', 'jyoti.deshpande@company.com', '9823002012', 'F', '1986-06-24', '2011-04-01', 12, 'Office Administrator', 52000.00, 'Pune'),
('Kanchan', 'Mane', 'kanchan.mane@company.com', '9823002013', 'F', '1992-10-07', '2017-01-01', 13, 'Research Scientist', 82000.00, 'Pune'),
('Kaveri', 'Nair', 'kaveri.nair@company.com', '9823002014', 'F', '1991-02-20', '2016-06-01', 14, 'Operations Coordinator', 58000.00, 'Mumbai'),
('Komal', 'Thorat', 'komal.thorat@company.com', '9823002015', 'F', '1994-06-03', '2019-08-01', 15, 'Safety Executive', 46000.00, 'Nashik'),
('Lata', 'Sawant', 'lata.sawant@company.com', '9823002016', 'F', '1988-10-16', '2013-09-01', 1, 'UI/UX Designer', 76000.00, 'Pune'),
('Madhuri', 'Salunkhe', 'madhuri.salunkhe@company.com', '9823002017', 'F', '1993-01-29', '2018-03-01', 2, 'Tax Analyst', 62000.00, 'Nashik'),
('Manasi', 'Kadam', 'manasi.kadam@company.com', '9823002018', 'F', '1990-05-12', '2015-06-01', 3, 'Learning & Development', 64000.00, 'Nagpur'),
('Mangala', 'Landge', 'mangala.landge@company.com', '9823002019', 'F', '1987-09-25', '2012-07-01', 4, 'Regional Sales Manager', 88000.00, 'Aurangabad'),
('Meghana', 'Mohite', 'meghana.mohite@company.com', '9823002020', 'F', '1994-01-07', '2019-01-01', 5, 'Support Associate', 42000.00, 'Pune'),
('Mrunali', 'Ghuge', 'mrunali.ghuge@company.com', '9823002021', 'F', '1991-05-20', '2016-03-01', 6, 'Quality Auditor', 68000.00, 'Kolhapur'),
('Mugdha', 'Chavan', 'mugdha.chavan@company.com', '9823002022', 'F', '1989-09-03', '2014-10-01', 7, 'Test Architect', 85000.00, 'Pune'),
('Namrata', 'Tambe', 'namrata.tambe@company.com', '9823002023', 'F', '1993-12-16', '2018-07-01', 8, 'Business Consultant', 74000.00, 'Mumbai'),
('Neha', 'Bankar', 'neha.bankar@company.com', '9823002024', 'F', '1990-04-28', '2015-02-01', 9, 'IP Manager', 78000.00, 'Pune'),
('Nilima', 'Parab', 'nilima.parab@company.com', '9823002025', 'F', '1986-08-11', '2011-09-01', 10, 'Content Manager', 70000.00, 'Mumbai'),
('Pallavi', 'Surve', 'pallavi.surve@company.com', '9823002026', 'F', '1992-12-24', '2017-11-01', 11, 'Procurement Officer', 65000.00, 'Nagpur'),
('Pooja', 'Kamble', 'pooja.kamble@company.com', '9823002027', 'F', '1991-04-06', '2016-01-01', 12, 'Executive Secretary', 56000.00, 'Pune'),
('Pradnya', 'Raut', 'pradnya.raut@company.com', '9823002028', 'F', '1988-08-19', '2013-08-01', 13, 'Innovation Head', 92000.00, 'Pune'),
('Preeti', 'Nikam', 'preeti.nikam@company.com', '9823002029', 'F', '1994-12-01', '2019-06-01', 14, 'Travel Agent', 50000.00, 'Mumbai'),
('Priyanka', 'Bhakare', 'priyanka.bhakare@company.com', '9823002030', 'F', '1991-04-14', '2016-05-01', 15, 'Risk Analyst', 62000.00, 'Pune'),
('Radha', 'Sonawane', 'radha.sonawane@company.com', '9823002031', 'F', '1989-08-27', '2014-01-01', 1, 'System Analyst', 80000.00, 'Pune'),
('Rohini', 'Pote', 'rohini.pote@company.com', '9823002032', 'F', '1993-01-10', '2018-05-01', 2, 'Accounts Executive', 52000.00, 'Nashik'),
('Rupali', 'Waghmare', 'rupali.waghmare@company.com', '9823002033', 'F', '1990-05-23', '2015-09-01', 3, 'Employee Relations', 66000.00, 'Nagpur'),
('Sadhana', 'Shirke', 'sadhana.shirke@company.com', '9823002034', 'F', '1987-09-05', '2012-04-01', 4, 'Sales Trainer', 72000.00, 'Aurangabad'),
('Samruddhi', 'Jedhe', 'samruddhi.jedhe@company.com', '9823002035', 'F', '1994-01-18', '2019-09-01', 5, 'Chat Support Agent', 40000.00, 'Pune'),
('Sangeeta', 'Gorde', 'sangeeta.gorde@company.com', '9823002036', 'F', '1991-05-31', '2016-07-01', 6, 'Factory Manager', 98000.00, 'Kolhapur'),
('Savita', 'Malkar', 'savita.malkar@company.com', '9823002037', 'F', '1988-10-13', '2013-11-01', 7, 'Quality Manager', 88000.00, 'Pune'),
('Sheetal', 'Khade', 'sheetal.khade@company.com', '9823002038', 'F', '1993-02-26', '2018-02-01', 8, 'Project Manager', 95000.00, 'Mumbai'),
('Shilpa', 'Bhamre', 'shilpa.bhamre@company.com', '9823002039', 'F', '1990-07-09', '2015-04-01', 9, 'Corporate Counsel', 88000.00, 'Pune'),
('Shubhangi', 'Suryavanshi', 'shubhangi.suryavanshi@company.com', '9823002040', 'F', '1986-11-21', '2011-06-01', 10, 'Marketing Manager', 90000.00, 'Mumbai'),
('Shraddha', 'Hiray', 'shraddha.hiray@company.com', '9823002041', 'F', '1993-04-04', '2018-08-01', 11, 'Logistics Manager', 82000.00, 'Nagpur'),
('Smita', 'Doke', 'smita.doke@company.com', '9823002042', 'F', '1989-08-17', '2014-04-01', 12, 'Admin Manager', 75000.00, 'Pune'),
('Snehal', 'Navale', 'snehal.navale@company.com', '9823002043', 'F', '1992-12-29', '2017-09-01', 13, 'Lab Scientist', 72000.00, 'Pune'),
('Sonali', 'Bagal', 'sonali.bagal@company.com', '9823002044', 'F', '1990-04-11', '2015-07-01', 14, 'Booking Manager', 68000.00, 'Mumbai'),
('Spoorti', 'Gavhane', 'spoorti.gavhane@company.com', '9823002045', 'F', '1987-08-24', '2012-10-01', 15, 'CCTV Operator', 45000.00, 'Pune'),
('Supriya', 'Lahane', 'supriya.lahane@company.com', '9823002046', 'F', '1993-01-06', '2018-04-01', 1, 'AI/ML Engineer', 92000.00, 'Pune'),
('Suvarna', 'Tupe', 'suvarna.tupe@company.com', '9823002047', 'F', '1991-05-19', '2016-10-01', 2, 'Audit Executive', 68000.00, 'Nashik'),
('Swapnali', 'Gavit', 'swapnali.gavit@company.com', '9823002048', 'F', '1988-09-01', '2013-02-01', 3, 'Welfare Officer', 58000.00, 'Nagpur'),
('Swati', 'Pokharkar', 'swati.pokharkar@company.com', '9823002049', 'F', '1994-01-14', '2019-11-01', 4, 'Pre-sales Executive', 50000.00, 'Aurangabad'),
('Tejashri', 'Khandagale', 'tejashri.khandagale@company.com', '9823002050', 'F', '1991-05-27', '2016-12-01', 5, 'Team Leader - Support', 70000.00, 'Pune'),
('Ujwala', 'Padwal', 'ujwala.padwal@company.com', '9823002051', 'F', '1989-10-09', '2014-06-01', 6, 'Production Analyst', 62000.00, 'Kolhapur'),
('Uma', 'Bagde', 'uma.bagde@company.com', '9823002052', 'F', '1993-02-21', '2018-10-01', 7, 'Functional Tester', 58000.00, 'Pune'),
('Urmila', 'Kumbhar', 'urmila.kumbhar@company.com', '9823002053', 'F', '1990-06-04', '2015-11-01', 8, 'Change Manager', 76000.00, 'Mumbai'),
('Vaishali', 'Gavande', 'vaishali.gavande@company.com', '9823002054', 'F', '1987-10-17', '2012-01-01', 9, 'Legal Secretary', 56000.00, 'Pune'),
('Vandana', 'Dhone', 'vandana.dhone@company.com', '9823002055', 'F', '1993-02-28', '2018-06-01', 10, 'Social Media Manager', 64000.00, 'Mumbai'),
('Varada', 'Kolhe', 'varada.kolhe@company.com', '9823002056', 'F', '1990-07-12', '2015-12-01', 11, 'Purchase Officer', 60000.00, 'Nagpur'),
('Vidya', 'Rode', 'vidya.rode@company.com', '9823002057', 'F', '1988-11-24', '2013-03-01', 12, 'HR Admin', 55000.00, 'Pune'),
('Vrushali', 'Mashe', 'vrushali.mashe@company.com', '9823002058', 'F', '1994-04-07', '2019-07-01', 13, 'Junior Researcher', 52000.00, 'Pune'),
('Yogita', 'Hirekar', 'yogita.hirekar@company.com', '9823002059', 'F', '1991-08-19', '2016-02-01', 14, 'Logistics Executive', 56000.00, 'Mumbai'),
('Yukta', 'Gondkar', 'yukta.gondkar@company.com', '9823002060', 'F', '1989-12-31', '2014-08-01', 15, 'Guard Supervisor', 52000.00, 'Nashik'),
-- Additional employees (61-75) to reach 150 total
('Abhijit', 'Choughule', 'abhijit.choughule@company.com', '9823003001', 'M', '1992-03-14', '2017-02-01', 1, 'Backend Developer', 74000.00, 'Pune'),
('Aditya', 'Karawade', 'aditya.karawade@company.com', '9823003002', 'M', '1994-07-27', '2019-04-01', 2, 'Audit Assistant', 46000.00, 'Nashik'),
('Ajay', 'Dhamane', 'ajay.dhamane@company.com', '9823003003', 'M', '1990-11-10', '2015-01-01', 3, 'Compliance Manager', 82000.00, 'Nagpur'),
('Akshay', 'Ghate', 'akshay.ghate@company.com', '9823003004', 'M', '1988-02-22', '2013-06-01', 4, 'Zonal Sales Head', 98000.00, 'Aurangabad'),
('Amey', 'Borse', 'amey.borse@company.com', '9823003005', 'M', '1993-06-05', '2018-11-01', 5, 'CRM Executive', 50000.00, 'Pune'),
('Amrut', 'Wadekar', 'amrut.wadekar@company.com', '9823003006', 'M', '1991-10-18', '2016-04-01', 6, 'Mechanical Engineer', 72000.00, 'Kolhapur'),
('Anilkumar', 'Khaire', 'anilkumar.khaire@company.com', '9823003007', 'M', '1988-02-28', '2013-12-01', 7, 'Performance Tester', 68000.00, 'Pune'),
('Ankush', 'Wavare', 'ankush.wavare@company.com', '9823003008', 'M', '1994-07-12', '2019-12-01', 8, 'Jr. Business Analyst', 48000.00, 'Nashik'),
('Anurag', 'Zodape', 'anurag.zodape@company.com', '9823003009', 'M', '1991-11-25', '2016-06-01', 9, 'IPR Specialist', 74000.00, 'Pune'),
('Arun', 'Chate', 'arun.chate@company.com', '9823003010', 'M', '1989-03-09', '2014-05-01', 10, 'SEO Manager', 70000.00, 'Mumbai'),
('Ashok', 'Pagare', 'ashok.pagare@company.com', '9823003011', 'M', '1986-07-22', '2011-08-01', 11, 'Inventory Manager', 78000.00, 'Nagpur'),
('Atharva', 'Garje', 'atharva.garje@company.com', '9823003012', 'M', '1995-11-04', '2021-02-01', 12, 'Office Assistant', 38000.00, 'Pune'),
('Avdhut', 'Birhade', 'avdhut.birhade@company.com', '9823003013', 'M', '1991-03-17', '2016-07-01', 13, 'Data Scientist', 90000.00, 'Pune'),
('Chandrakant', 'Khomane', 'chandrakant.khomane@company.com', '9823003014', 'M', '1987-07-29', '2012-10-01', 14, 'Hospitality Manager', 76000.00, 'Mumbai'),
('Charudatt', 'Dhanawade', 'charudatt.dhanawade@company.com', '9823003015', 'M', '1993-12-11', '2018-08-01', 15, 'Security Trainer', 55000.00, 'Pune');

-- ============================================
-- USEFUL VIEWS
-- ============================================

CREATE OR REPLACE VIEW employee_department_view AS
SELECT 
    e.emp_id,
    CONCAT(e.first_name, ' ', e.last_name) AS full_name,
    e.email,
    e.gender,
    e.designation,
    e.salary,
    e.city,
    d.dept_name,
    d.location AS dept_location
FROM employee e
JOIN department d ON e.dept_id = d.dept_id;

CREATE OR REPLACE VIEW dept_salary_summary AS
SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS total_employees,
    ROUND(AVG(e.salary), 2) AS avg_salary,
    MIN(e.salary) AS min_salary,
    MAX(e.salary) AS max_salary,
    SUM(e.salary) AS total_salary
FROM department d
LEFT JOIN employee e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
ORDER BY total_employees DESC;

-- ============================================
-- SAMPLE QUERIES
-- ============================================

-- 1. All employees with department
-- SELECT * FROM employee_department_view;

-- 2. Department salary summary
-- SELECT * FROM dept_salary_summary;

-- 3. Count by gender
-- SELECT gender, COUNT(*) AS count FROM employee GROUP BY gender;

-- 4. Top 10 highest paid employees
-- SELECT full_name, designation, salary, dept_name FROM employee_department_view ORDER BY salary DESC LIMIT 10;

-- 5. Employees by city
-- SELECT city, COUNT(*) AS count FROM employee GROUP BY city ORDER BY count DESC;

SELECT 'Database Created Successfully!' AS Status;
SELECT COUNT(*) AS Total_Employees FROM employee;
SELECT COUNT(*) AS Total_Departments FROM department;
select * from department;