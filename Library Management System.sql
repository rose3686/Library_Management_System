-- Create the database (myLMS) and tables using MySQL.
CREATE DATABASE myLMS;
USE myLMS;

CREATE TABLE Books(
book_Id INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(200) NOT NULL,
Authro VARCHAR(200) NOT NULL,
Genre VARCHAR(100) NOT NULL,
Availability_status BOOLEAN DEFAULT TRUE
);

ALTER TABLE Books
CHANGE COLUMN Authro Author VARCHAR(200) NOT NULL;

-- to see the Books table structure
DESC Books; 
EXPLAIN Books; 

SELECT * FROM Books;
-- Create (Insert a new record) : bulk records
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (1, 'Lord of the Flies', 'Hannah Coleman', 'Horror', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (2, 'The Sun Also Rises', 'Samuel Hill', 'Gardening', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (3, 'The Color Purple', 'Zoe Perry', 'Fashion', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (4, 'The Thorn Birds', 'Michael Davis', 'True Crime', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (5, 'The Name of the Wind', 'Victoria Foster', 'Paranormal', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (6, 'The Shining', 'Luke Brooks', 'Chick Lit', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (7, 'The Giver', 'Madison Adams', 'Educational', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (8, 'The Lovely Bones', 'Alyssa Powell', 'Western', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (9, 'The Poisonwood Bible', 'Benjamin Morris', 'Gardening', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (10, 'The Color Purple', 'Owen Price', 'Western', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (11, 'The Alchemist', 'Layla Russell', 'Graphic Novel', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (12, 'The Joy Luck Club', 'Nicholas Wright', 'Horror', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (13, 'The Martian', 'Aria Coleman', 'Biography', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (14, 'The Catcher in the Rye', 'James Thompson', 'Historical Fiction', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (15, 'The Alchemist', 'Madison Adams', 'Educational', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (16, 'The Outsiders', 'Aria Coleman', 'Poetry', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (17, 'The Alchemist', 'Benjamin Morris', 'Fashion', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (18, 'The Brief Wondrous Life of Oscar Wao', 'Daniel Lee', 'Short Stories', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (19, 'The Kite Runner', 'Isaac Hughes', 'Philosophy', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (20, 'The Road Less Traveled', 'Victoria Foster', 'Gardening', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (21, 'The Road', 'Sophie Parker', 'True Crime', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (22, 'The Art of Racing in the Rain', 'Christopher Young', 'Politics', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (23, 'The Lovely Bones', 'Samuel Hill', 'Health', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (24, 'The Road', 'Emily Brown', 'Parenting', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (25, 'The Goldfinch', 'Sophia Lewis', 'Pets', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (26, 'The Alchemist', 'Joshua Ramirez', 'Religion', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (27, 'The Hunger Games', 'David Martinez', 'Mystery', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (28, 'The Maze Runner', 'Sophia Lewis', 'Educational', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (29, 'The Princess Bride', 'John Johnson', 'Biography', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (30, 'The Time Traveler''s Wife', 'Joshua Ramirez', 'Western', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (31, 'The Giver', 'Lily Hall', 'Poetry', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (32, 'To Kill a Mockingbird', 'Daniel Lee', 'Western', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (33, 'The Sun Also Rises', 'Avery Rivera', 'Sports', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (34, 'The Help', 'Daniel Lee', 'Cookbook', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (35, 'The Help', 'Andrew Scott', 'Philosophy', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (36, 'The Goldfinch', 'Dylan Baker', 'Non-Fiction', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (37, 'The Road Less Traveled', 'Alice Smith', 'Crime', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (38, 'The Fault in Our Stars', 'Natalie Reed', 'Humor', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (39, 'The Hunger Games', 'Avery Rivera', 'Science', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (40, 'To Kill a Mockingbird', 'Owen Price', 'Historical Fiction', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (41, 'The Book Thief', 'Lily Hall', 'Young Adult', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (42, 'The Road', 'Olivia Clark', 'Self-Help', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (43, 'The Hobbit', 'Olivia Clark', 'Science', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (44, '1984', 'Hannah Coleman', 'Satire', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (45, 'The Lovely Bones', 'Matthew Harris', 'Philosophy', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (46, 'The Sun Also Rises', 'Matthew Harris', 'Psychology', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (47, 'The Immortal Life of Henrietta Lacks', 'Sophie Parker', 'Romance', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (48, 'The Curious Incident of the Dog in the Night-Time', 'Madison Adams', 'Memoir', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (49, 'The Road', 'Joseph Turner', 'Crafts', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (50, 'The Giver', 'Madison Adams', 'Memoir', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (51, 'The Night Circus', 'Ava White', 'Science Fiction', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (52, 'The Goldfinch', 'Robert Anderson', 'Young Adult', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (53, 'The Great Gatsby', 'Daniel Lee', 'Politics', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (54, 'The Hobbit', 'William Rodriguez', 'Parenting', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (55, 'The Glass Castle', 'Andrew Scott', 'Politics', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (56, 'The Joy Luck Club', 'Aria Coleman', 'DIY', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (57, 'The Giver', 'James Thompson', 'Children''s', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (58, 'The Catcher in the Rye', 'Isabella Edwards', 'Fitness', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (59, 'The Maze Runner', 'Jacob Ward', 'Young Adult', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (60, 'The Brief Wondrous Life of Oscar Wao', 'Ella Torres', 'Travel', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (61, 'The Goldfinch', 'Benjamin Morris', 'History', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (62, 'The Help', 'Robert Anderson', 'Non-Fiction', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (63, 'The Immortal Life of Henrietta Lacks', 'Daniel Lee', 'Adventure', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (64, 'Harry Potter and the Sorcerer''s Stone', 'Andrew Scott', 'Philosophy', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (65, 'The Maze Runner', 'Madison Adams', 'Thriller', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (66, 'The Stand', 'Isaac Hughes', 'Anthology', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (67, 'The Great Gatsby', 'Isaac Hughes', 'Poetry', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (68, 'To Kill a Mockingbird', 'Isaac Hughes', 'Philosophy', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (69, 'The Hobbit', 'Aria Coleman', 'Crafts', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (70, 'The Brief Wondrous Life of Oscar Wao', 'Caleb Gray', 'Paranormal', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (71, 'The Goldfinch', 'Sophia Lewis', 'Politics', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (72, 'The Brief Wondrous Life of Oscar Wao', 'James Thompson', 'Self-Help', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (73, 'The Art of Racing in the Rain', 'Zoe Perry', 'Thriller', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (74, 'Gone Girl', 'David Martinez', 'Travel', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (75, 'The Book Thief', 'Grace Moore', 'Science', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (76, 'The Girl with the Dragon Tattoo', 'Caleb Gray', 'Self-Help', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (77, 'The Maze Runner', 'Owen Price', 'Adventure', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (78, 'The Martian', 'Michael Davis', 'Chick Lit', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (79, 'The Glass Castle', 'David Martinez', 'Biography', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (80, 'The Curious Incident of the Dog in the Night-Time', 'Madison Adams', 'Short Stories', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (81, 'The Help', 'Matthew Harris', 'Young Adult', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (82, 'The Alchemist', 'Avery Rivera', 'Historical Fiction', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (83, 'The Shining', 'Grace Moore', 'Paranormal', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (84, 'The Kite Runner', 'Daniel Lee', 'Politics', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (85, 'The Catcher in the Rye', 'Mia Cooper', 'Religion', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (86, 'The Poisonwood Bible', 'Zoe Perry', 'Parenting', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (87, 'The Book Thief', 'Avery Rivera', 'Philosophy', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (88, 'The Shining', 'Hannah Coleman', 'Biography', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (89, 'The Hunger Games', 'Emma King', 'Parenting', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (90, 'The Poisonwood Bible', 'Daniel Lee', 'Historical Fiction', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (91, 'Brave New World', 'Samuel Hill', 'Satire', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (92, 'The Help', 'Dylan Baker', 'Short Stories', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (93, 'The Martian', 'Daniel Lee', 'Classic', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (94, 'The Picture of Dorian Gray', 'Ella Torres', 'Religion', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (95, 'The Martian', 'Ethan Nelson', 'Health', false);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (96, 'The Outsiders', 'Joshua Ramirez', 'Gardening', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (97, 'The Catcher in the Rye', 'Aria Coleman', 'Cooking', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (98, 'The Princess Bride', 'Hannah Coleman', 'Cooking', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (99, 'The Outsiders', 'Jacob Ward', 'Fantasy', true);
insert into Books (book_Id, Title, Author, Genre, Availability_status) values (100, 'The Girl with the Dragon Tattoo', 'Jack Murphy', 'Sports', true);

CREATE TABLE Members(
Member_Id INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(200) NOT NULL,
Address VARCHAR(200),
Phone VARCHAR(20),
Membership_date DATE
);

insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (1, 'Daniel Garcia', 'Suite 74', '554-812-1666', '2022-02-28');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (2, 'Brandon Moore', 'PO Box 94464', '752-709-5235', '2022-03-10');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (3, 'Kevin Perez', '7th Floor', '167-316-5822', '2022-02-28');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (4, 'Christopher White', 'Suite 97', '195-523-7110', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (5, 'Hannah Mitchell', 'Room 585', '929-193-1259', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (6, 'John Doe', 'Apt 1547', '417-694-4642', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (7, 'Hannah Mitchell', 'Room 505', '370-367-7770', '2022-08-18');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (8, 'William Young', 'Room 1529', '636-111-5576', '2022-03-10');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (9, 'Jessica Hernandez', 'Suite 81', '490-651-1791', '2022-03-10');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (10, 'James Martinez', 'Apt 825', '989-169-8985', '2022-08-18');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (11, 'Matthew Lewis', 'Apt 1370', '179-221-7746', '2022-04-05');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (12, 'Brandon Moore', 'Room 1208', '738-928-5297', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (13, 'David Wilson', '12th Floor', '563-876-0512', '2022-09-22');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (14, 'James Martinez', 'Room 1770', '387-537-4219', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (15, 'Stephanie Cooper', '3rd Floor', '584-195-9970', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (16, 'Kimberly Torres', 'Apt 1833', '115-520-8652', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (17, 'Jessica Hernandez', 'Room 990', '657-229-5894', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (18, 'John Doe', 'Suite 17', '936-183-8661', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (19, 'Matthew Lewis', 'PO Box 36201', '560-317-0968', '2022-03-10');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (20, 'Brian Lee', 'PO Box 45757', '153-267-1875', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (21, 'Sarah Davis', 'Apt 897', '313-537-9978', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (22, 'Ryan Scott', 'Apt 1414', '269-166-3891', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (23, 'Amanda Thomas', 'PO Box 4411', '300-666-3825', '2022-04-05');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (24, 'Hannah Mitchell', '10th Floor', '759-637-3691', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (25, 'John Doe', 'Suite 47', '957-808-7163', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (26, 'Stephanie Cooper', '19th Floor', '884-883-2400', '2022-03-10');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (27, 'Matthew Lewis', 'Room 950', '902-190-0362', '2022-08-18');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (28, 'Joshua King', 'Room 1745', '452-627-4055', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (29, 'Matthew Lewis', '1st Floor', '646-274-4553', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (30, 'Megan Clark', 'Apt 1254', '701-248-7236', '2022-04-05');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (31, 'Kimberly Torres', 'Suite 18', '588-803-5564', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (32, 'Lauren Baker', 'Apt 978', '944-172-7894', '2022-04-05');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (33, 'Nicole Ramirez', '1st Floor', '702-108-9318', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (34, 'Emily Brown', 'Apt 1062', '592-257-3125', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (35, 'James Martinez', 'Apt 1021', '130-156-6802', '2022-09-22');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (36, 'Brandon Moore', 'Apt 511', '728-855-3386', '2022-03-10');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (37, 'Joshua King', 'PO Box 93998', '429-781-2861', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (38, 'James Martinez', 'Room 180', '891-591-7405', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (39, 'Hannah Mitchell', 'PO Box 45194', '604-600-1698', '2022-02-28');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (40, 'Nicole Ramirez', 'Apt 408', '637-450-6235', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (41, 'James Martinez', '5th Floor', '161-498-2096', '2022-02-28');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (42, 'Emily Brown', '19th Floor', '791-214-4963', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (43, 'Andrew Hall', 'Suite 92', '746-262-0893', '2022-08-18');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (44, 'Kevin Perez', '15th Floor', '335-974-0396', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (45, 'Nicole Ramirez', 'Suite 36', '341-545-1840', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (46, 'Daniel Garcia', 'Apt 225', '287-192-0347', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (47, 'Sarah Davis', '18th Floor', '581-121-2038', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (48, 'Brian Lee', 'Room 1988', '232-961-9543', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (49, 'James Martinez', '12th Floor', '351-522-7217', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (50, 'Stephanie Cooper', 'Suite 64', '932-904-0306', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (51, 'Brian Lee', 'Suite 9', '716-837-7953', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (52, 'Stephanie Cooper', 'Room 1762', '960-774-8063', '2022-02-28');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (53, 'Jessica Hernandez', 'Suite 41', '289-621-1743', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (54, 'Emily Brown', 'PO Box 14347', '737-656-4203', '2022-08-18');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (55, 'Brian Lee', 'Apt 1681', '126-210-5214', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (56, 'David Wilson', 'Suite 83', '203-300-9871', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (57, 'Kimberly Torres', '6th Floor', '328-222-8774', '2022-05-20');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (58, 'Michael Johnson', 'Suite 35', '384-815-8925', '2022-09-22');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (59, 'Ryan Scott', 'PO Box 41375', '427-630-0800', '2022-09-22');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (60, 'Brian Lee', '12th Floor', '944-144-7544', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (61, 'Jessica Hernandez', 'Room 836', '856-859-7362', '2022-03-10');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (62, 'Kimberly Torres', 'Suite 72', '317-146-0540', '2022-09-22');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (63, 'Brian Lee', 'Room 1320', '100-855-0366', '2022-02-28');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (64, 'Robert Anderson', 'PO Box 61585', '516-227-1070', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (65, 'Stephanie Cooper', 'PO Box 4163', '215-581-9522', '2022-02-28');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (66, 'Stephanie Cooper', 'Apt 1107', '907-103-1713', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (67, 'Kevin Perez', 'Apt 1000', '837-329-4318', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (68, 'Christopher White', 'Room 551', '284-311-0548', '2022-05-20');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (69, 'Daniel Garcia', 'Suite 84', '874-995-2239', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (70, 'Matthew Lewis', 'Room 17', '885-892-4598', '2022-05-20');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (71, 'Matthew Lewis', 'Suite 15', '709-258-4703', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (72, 'William Young', '13th Floor', '964-980-3819', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (73, 'Brian Lee', 'Apt 1328', '524-594-9358', '2022-03-10');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (74, 'Jessica Hernandez', 'Room 564', '708-903-6853', '2022-08-18');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (75, 'Laura Taylor', 'Apt 464', '847-190-8525', '2022-09-22');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (76, 'Sarah Davis', 'Apt 1406', '287-785-5805', '2022-03-10');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (77, 'Brandon Moore', 'Room 1521', '548-680-1413', '2022-09-22');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (78, 'Hannah Mitchell', 'PO Box 37456', '191-677-0956', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (79, 'Ashley Adams', 'Suite 3', '326-980-9305', '2022-05-20');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (80, 'Laura Taylor', 'Room 1500', '959-267-6352', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (81, 'Michael Johnson', 'Suite 16', '326-445-8632', '2022-04-05');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (82, 'Laura Taylor', 'Apt 1495', '317-454-9757', '2022-02-28');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (83, 'Michael Johnson', 'PO Box 3871', '153-587-1341', '2022-04-05');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (84, 'John Doe', 'Suite 53', '990-562-8515', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (85, 'Ryan Scott', '14th Floor', '650-233-5293', '2022-05-20');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (86, 'Robert Anderson', 'Room 694', '974-518-7480', '2022-05-20');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (87, 'Hannah Mitchell', 'Room 265', '432-220-5513', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (88, 'Robert Anderson', 'Room 1015', '227-254-0129', '2022-02-28');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (89, 'Robert Anderson', 'Suite 7', '914-489-1202', '2022-09-22');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (90, 'Emily Brown', '14th Floor', '715-484-8534', '2022-07-30');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (91, 'Amanda Thomas', '7th Floor', '829-214-6061', '2022-05-20');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (92, 'Emily Brown', '13th Floor', '872-169-1059', '2022-06-12');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (93, 'Joshua King', '14th Floor', '881-863-0564', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (94, 'Jessica Hernandez', 'Suite 58', '443-273-9467', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (95, 'Hannah Mitchell', 'Room 198', '933-902-5141', '2022-08-18');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (96, 'Kimberly Torres', 'Suite 76', '690-302-3335', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (97, 'Sarah Davis', '9th Floor', '823-107-8957', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (98, 'David Wilson', 'Suite 81', '569-590-1239', '2022-10-09');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (99, 'Hannah Mitchell', 'Apt 1806', '721-407-8023', '2022-01-15');
insert into Members (Member_Id, Name, Address, Phone, Membership_date) values (100, 'Christopher White', 'PO Box 65444', '534-467-4603', '2022-03-10');

-- READ (Select records)
SELECT * FROM Members;
-- READ (Select records): 
-- This command retrieves all download records for the member with Member_Id = 22.
SELECT * FROM Members
WHERE Member_Id = 22;


CREATE TABLE Borrowing(
borrow_Id INT AUTO_INCREMENT PRIMARY KEY,
book_Id INT,
Member_Id INT,
borrow_date DATE,
due_date DATE,
return_date DATE,
FOREIGN KEY (book_Id) REFERENCES Books(book_Id)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (Member_Id) REFERENCES Members(Member_Id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
-- CREATE (Insert a new record)
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) 
values (10, 10, 10, '2024-06-22', '2024-08-25', '2024-09-01');

-- UPDATE (Modify an existing record)
UPDATE Borrowing 
SET due_date = "2024-08-12"
WHERE borrow_Id = "1";

-- DELETE  (Remove a record):
DELETE FROM Borrowing
WHERE borrow_Id ="10";


insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (1, 1, 1, '2024-06-28', '2024-09-25', '2024-09-21');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (2, 2, 2, '2024-06-06', '2024-09-25', '2024-09-20');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (3, 3, 3, '2024-06-23', '2024-08-25', '2024-09-18');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (4, 4, 4, '2024-06-13', '2024-09-25', '2024-09-12');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (5, 5, 5, '2024-06-27', '2024-09-20', '2024-09-09');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (6, 6, 6, '2024-06-02', '2024-08-01', '2024-09-29');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (7, 7, 7, '2024-06-19', '2024-09-10', '2024-09-26');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (8, 8, 8, '2024-06-20', '2024-09-01', '2024-09-02');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (9, 9, 9, '2024-06-15', '2024-09-10', '2024-09-24');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (10, 10, 10, '2024-06-27', '2024-08-10', '2024-09-18');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (11, 11, 11, '2024-06-01', '2024-09-10', '2024-09-23');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (12, 12, 12, '2024-06-12', '2024-08-20', '2024-09-17');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (13, 13, 13, '2024-06-17', '2024-08-05', '2024-08-25');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (14, 14, 14, '2024-06-29', '2024-09-10', '2024-09-08');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (15, 15, 15, '2024-06-30', '2024-09-20', '2024-08-28');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (16, 16, 16, '2024-06-16', '2024-08-01', '2024-09-05');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (17, 17, 17, '2024-06-23', '2024-08-30', '2024-08-27');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (18, 18, 18, '2024-06-23', '2024-09-20', '2024-09-04');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (19, 19, 19, '2024-06-11', '2024-09-15', '2024-08-29');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (20, 20, 20, '2024-06-06', '2024-08-05', '2024-09-27');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (21, 21, 21, '2024-06-22', '2024-09-01', '2024-09-05');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (22, 22, 22, '2024-06-03', '2024-08-15', '2024-09-15');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (23, 23, 23, '2024-06-25', '2024-08-25', '2024-08-31');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (24, 24, 24, '2024-06-16', '2024-08-10', '2024-08-27');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (25, 25, 25, '2024-06-18', '2024-09-25', '2024-09-08');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (26, 26, 26, '2024-06-06', '2024-09-10', '2024-08-31');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (27, 27, 27, '2024-06-07', '2024-08-10', '2024-09-15');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (28, 28, 28, '2024-06-09', '2024-08-25', '2024-09-03');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (29, 29, 29, '2024-06-07', '2024-09-25', '2024-09-05');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (30, 30, 30, '2024-06-04', '2024-09-01', '2024-08-28');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (31, 31, 31, '2024-06-23', '2024-08-10', '2024-09-05');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (32, 32, 32, '2024-06-20', '2024-08-30', '2024-09-17');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (33, 33, 33, '2024-06-10', '2024-08-10', '2024-09-15');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (34, 34, 34, '2024-06-17', '2024-08-25', '2024-09-06');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (35, 35, 35, '2024-06-11', '2024-09-20', '2024-09-21');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (36, 36, 36, '2024-06-19', '2024-09-10', '2024-09-20');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (37, 37, 37, '2024-06-08', '2024-09-20', '2024-09-15');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (38, 38, 38, '2024-06-09', '2024-09-25', '2024-09-23');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (39, 39, 39, '2024-06-24', '2024-08-15', '2024-08-26');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (40, 40, 40, '2024-06-30', '2024-09-01', '2024-09-17');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (41, 41, 41, '2024-06-28', '2024-08-25', '2024-09-24');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (42, 42, 42, '2024-06-12', '2024-09-05', '2024-08-26');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (43, 43, 43, '2024-06-11', '2024-08-01', '2024-09-30');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (44, 44, 44, '2024-06-02', '2024-09-15', '2024-09-18');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (45, 45, 45, '2024-06-13', '2024-09-25', '2024-09-23');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (46, 46, 46, '2024-06-07', '2024-09-20', '2024-08-30');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (47, 47, 47, '2024-06-22', '2024-08-25', '2024-08-29');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (48, 48, 48, '2024-06-11', '2024-09-15', '2024-09-05');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (49, 49, 49, '2024-06-04', '2024-09-01', '2024-09-15');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (50, 50, 50, '2024-06-13', '2024-08-01', '2024-09-26');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (51, 51, 51, '2024-06-03', '2024-08-15', '2024-08-26');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (52, 52, 52, '2024-06-12', '2024-08-01', '2024-08-27');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (53, 53, 53, '2024-06-14', '2024-09-05', '2024-09-04');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (54, 54, 54, '2024-06-24', '2024-09-01', '2024-09-29');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (55, 55, 55, '2024-06-01', '2024-09-01', '2024-09-12');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (56, 56, 56, '2024-06-20', '2024-08-15', '2024-09-02');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (57, 57, 57, '2024-06-01', '2024-09-01', '2024-09-15');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (58, 58, 58, '2024-06-27', '2024-09-05', '2024-09-05');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (59, 59, 59, '2024-06-16', '2024-09-15', '2024-09-23');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (60, 60, 60, '2024-06-15', '2024-09-01', '2024-08-25');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (61, 61, 61, '2024-06-03', '2024-08-30', '2024-09-05');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (62, 62, 62, '2024-06-09', '2024-08-25', '2024-09-17');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (63, 63, 63, '2024-06-28', '2024-09-10', '2024-09-18');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (64, 64, 64, '2024-06-17', '2024-08-10', '2024-09-30');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (65, 65, 65, '2024-06-18', '2024-08-05', '2024-08-26');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (66, 66, 66, '2024-06-10', '2024-08-10', '2024-09-12');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (67, 67, 67, '2024-06-23', '2024-08-10', '2024-09-29');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (68, 68, 68, '2024-06-09', '2024-09-25', '2024-09-30');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (69, 69, 69, '2024-06-08', '2024-08-05', '2024-09-03');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (70, 70, 70, '2024-06-26', '2024-08-30', '2024-09-14');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (71, 71, 71, '2024-06-06', '2024-09-25', '2024-09-27');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (72, 72, 72, '2024-06-30', '2024-09-01', '2024-08-31');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (73, 73, 73, '2024-06-07', '2024-09-01', '2024-08-27');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (74, 74, 74, '2024-06-06', '2024-08-20', '2024-08-31');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (75, 75, 75, '2024-06-05', '2024-09-15', '2024-08-31');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (76, 76, 76, '2024-06-01', '2024-09-05', '2024-09-24');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (77, 77, 77, '2024-06-09', '2024-08-15', '2024-09-12');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (78, 78, 78, '2024-06-18', '2024-08-15', '2024-09-23');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (79, 79, 79, '2024-06-23', '2024-08-01', '2024-09-02');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (80, 80, 80, '2024-06-08', '2024-08-25', '2024-09-06');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (81, 81, 81, '2024-06-30', '2024-08-25', '2024-09-12');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (82, 82, 82, '2024-06-23', '2024-08-15', '2024-09-18');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (83, 83, 83, '2024-06-01', '2024-08-01', '2024-08-25');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (84, 84, 84, '2024-06-09', '2024-08-01', '2024-08-25');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (85, 85, 85, '2024-06-01', '2024-08-05', '2024-09-18');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (86, 86, 86, '2024-06-28', '2024-08-30', '2024-09-10');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (87, 87, 87, '2024-06-02', '2024-09-01', '2024-09-01');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (88, 88, 88, '2024-06-29', '2024-09-05', '2024-09-24');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (89, 89, 89, '2024-06-13', '2024-09-20', '2024-08-26');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (90, 90, 90, '2024-06-25', '2024-08-01', '2024-09-20');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (91, 91, 91, '2024-06-20', '2024-09-25', '2024-08-26');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (92, 92, 92, '2024-06-09', '2024-09-15', '2024-09-14');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (93, 93, 93, '2024-06-28', '2024-09-25', '2024-09-30');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (94, 94, 94, '2024-06-11', '2024-09-20', '2024-09-01');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (95, 95, 95, '2024-06-15', '2024-09-25', '2024-09-23');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (96, 96, 96, '2024-06-26', '2024-08-05', '2024-09-12');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (97, 97, 97, '2024-06-19', '2024-09-01', '2024-09-02');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (98, 98, 98, '2024-06-16', '2024-09-15', '2024-08-30');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (99, 99, 99, '2024-06-06', '2024-09-01', '2024-09-27');
insert into Borrowing (borrow_Id, book_Id, Member_Id, borrow_date, due_date, return_date) values (100, 100, 100, '2024-06-30', '2024-09-01', '2024-09-02');


SELECT * FROM Borrowing;

-- Handle cases such as checking for overdue books.
SELECT Books.book_Id,Books.Title,Members.Member_Id,Members.Name,Borrowing.borrow_Id,Borrowing.borrow_date,Borrowing.due_date,Borrowing.return_date
FROM Borrowing
JOIN Books ON Borrowing.book_Id = Books.book_Id -- This joins the Borrowing table with the Books table to get book details.
JOIN Members ON Borrowing.Member_Id =Members.Member_Id -- This joins the Borrowing table with the Members table to get member details.
WHERE Borrowing.return_date IS NOT NULL -- This condition ensures that only records where the book has been returned are considered.
AND Borrowing.return_date > Borrowing.due_date; -- This condition checks that the return_date is after the due_date, identifying overdue returns.

-- this query allows you to identify books that were returned late by comparing the return_date with the due_date. 
-- It joins the Borrowing table with the Books and Members tables to provide comprehensive information about the overdue returns.








