# Library_Management_System 📚
## Introduction 
The Library Management System (LMS) is designed to manage a library's inventory of books, member information, and borrowing records.<br/> This document outlines the database structure, relationships between tables, and sample queries to demonstrate how the system functions.
## Database Structure 
The LMS database consists of three main tables: Books, Members, and Borrowing. These tables are related to one another to ensure data integrity and facilitate complex queries.
## Tables
1. **Book Table** 🔖
   * **Descriptions**: Stores information about the books available in the library.
   * **Columns**:
      * book_Id INT AUTO_INCREMENT PRIMARY KEY,
      * Title VARCHAR(200) NOT NULL,
      * Author VARCHAR(200) NOT NULL,
      * Genre VARCHAR(100) NOT NULL,
      * Availability_status BOOLEAN DEFAULT TRUE
2. **Members Table** 👩‍🦰👦 
   * **Description**: Stores information about library members.
   * **Columns**:
     * Member_Id INT AUTO_INCREMENT PRIMARY KEY,
     * Name VARCHAR(200) NOT NULL,
     * Address VARCHAR(200),
     * Phone VARCHAR(20),
     * Membership_date DATE
3. **Borrowing Table** 🫱🏾‍🫲🏾
   * **Description**: Records details of book borrowings.
   * **Columns**:
     * borrow_Id INT AUTO_INCREMENT PRIMARY KEY,
     * book_Id INT,
     * Member_Id INT,
     * borrow_date DATE,
     * due_date DATE,
     * return_date DATE,
## Relationships
   * Each book can be borrowed by multiple members over time, creating a one-to-many relationship between the Books and Borrowing tables.
   * Each member can borrow multiple books over time, creating a one-to-many relationship between the Members and Borrowing tables.
### SQL Statements
### Creating the Database and Tables
   > CREATE DATABASE myLMS; <br/>
   
   > USE myLMS;<br/>
   
   > CREATE TABLE Books(<br/>
book_Id INT AUTO_INCREMENT PRIMARY KEY,<br/>
Title VARCHAR(200) NOT NULL,<br/>
Authro VARCHAR(200) NOT NULL,<br/>
Genre VARCHAR(100) NOT NULL,<br/>
Availability_status BOOLEAN DEFAULT TRUE<br/>
);

   > CREATE TABLE Members(<br/>
Member_Id INT AUTO_INCREMENT PRIMARY KEY,<br/>
Name VARCHAR(200) NOT NULL,<br/>
Address VARCHAR(200),<br/>
Phone VARCHAR(20),<br/>
Membership_date DATE<br/>
);

   >CREATE TABLE Borrowing(<br/>
borrow_Id INT AUTO_INCREMENT PRIMARY KEY,<br/>
book_Id INT,<br/>
Member_Id INT,<br/>
borrow_date DATE,<br/>
due_date DATE,<br/>
return_date DATE,<br/>
FOREIGN KEY (book_Id) REFERENCES Books(book_Id)<br/>
ON DELETE CASCADE<br/>
ON UPDATE CASCADE,<br/>
FOREIGN KEY (Member_Id) REFERENCES Members(Member_Id)<br/>
ON DELETE CASCADE<br/>
ON UPDATE CASCADE<br/>
);

## Inserting Records 
### Adding Books:
   > insert into Books (book_Id, Title, Author, Genre, Availability_status) values (1, 'Lord of the Flies', 'Hannah Coleman', 'Horror', false);<br/>
   > insert into Books (book_Id, Title, Author, Genre, Availability_status) values (2, 'The Sun Also Rises', 'Samuel Hill', 'Gardening', false);<br/>
   > insert into Books (book_Id, Title, Author, Genre, Availability_status) values (3, 'The Color Purple', 'Zoe Perry', 'Fashion', false);<br/>
   
### Adding Members:
   > insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (1, 'Daniel Garcia', 'Suite 74', '554-812-1666', '2022-02-28');<br/>
   > insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (2, 'Brandon Moore', 'PO Box 94464', '752-709-5235', '2022-03-10');<br/>
   > insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (3, 'Kevin Perez', '7th Floor', '167-316-5822', '2022-02-28');<br/>

## Borrowing Records
### Recording a Borrowing Event:
   > insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (1, 1, 1, '2024-06-28', '2024-09-25', '2024-09-21');<br/>
   > insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (2, 2, 2, '2024-06-06', '2024-09-25', '2024-09-20');<br/>
   > insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (3, 3, 3, '2024-06-23', '2024-08-25', '2024-09-18');<br/>
   
## Advanced Queries
### Handle cases such as checking for overdue books.

   > SELECT Books.book_Id,Books.Title,Members.Member_Id,Members.Name,Borrowing.borrow_Id,Borrowing.borrow_date,Borrowing.due_date,Borrowing.return_date<br/>
   > FROM Borrowing<br/>
   > JOIN Books ON Borrowing.book_Id = Books.book_Id<br/> 
   > JOIN Members ON Borrowing.Member_Id =Members.Member_Id<br/>
   > WHERE Borrowing.return_date IS NOT NULL<br/>
   > AND Borrowing.return_date > Borrowing.due_date;<br/>

## Conclusion

The Library Management System database provides a structured way to manage books, members, and borrowing records. <br/>By creating well-defined tables and establishing relationships, the system ensures data integrity and supports complex queries for efficient library management. This project is an excellent way to practice and enhance your MySQL skills.









      

