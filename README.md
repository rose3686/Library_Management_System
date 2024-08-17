# Library_Management_System 📚
## Introduction 
The Library Management System (LMS) is designed to manage a library's inventory of books, member information, and borrowing records. This document outlines the database structure, relationships between tables, and sample queries to demonstrate how the system functions.
## Database Structure 
The LMS database consists of three main tables: Books, Members, and Borrowing. These tables are related to one another to ensure data integrity and facilitate complex queries.
##Tables
1. Book Table 🔖
   -**Descriptions**: Stores information about the books available in the library.
   -**Columns**:
      -book_Id INT AUTO_INCREMENT PRIMARY KEY,
      -Title VARCHAR(200) NOT NULL,
      -Author VARCHAR(200) NOT NULL,
      -Genre VARCHAR(100) NOT NULL,
      -Availability_status BOOLEAN DEFAULT TRUE
2. Members Table 👩‍🦰👦 
   -**Description**: Stores information about library members.
   -**Columns**:
      -Member_Id INT AUTO_INCREMENT PRIMARY KEY,
      -Name VARCHAR(200) NOT NULL,
      -Address VARCHAR(200),
      -Phone VARCHAR(20),
      -Membership_date DATE
