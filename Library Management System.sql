
-- Create a database named library and following TABLES in the database: 

CREATE DATABASE Library;
USE Library;

show tables;

CREATE TABLE Branch(
	Branch_no INT PRIMARY KEY,  
	Manager_Id INT NOT NULL,
	Branch_address VARCHAR(30),  
	Contact_no INT
); 

INSERT INTO Branch VALUES
(1, 1051, "123 MG Road, Bangalore", 0801234567),
(2, 1103, "456 Park Street, Kolkata", 0331234567),
(3, 1298, "789 Anna Salai, Chennai", 0441234567),
(4, 1475, "321 Connaught Place, New Delhi", 0111234567),
(5, 1542, "654 FC Road, Pune", 0201234567);



CREATE TABLE Employee(
	Emp_Id INT PRIMARY KEY,   
	Emp_name VARCHAR(25) NOT NULL,
	Position VARCHAR(25) NOT NULL,
	Salary INT,
    Branch_no INT,
	FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)  
);


INSERT INTO Employee VALUES
(1051, "Amit Sharma", "Manager", 75000, 1),
(1024, "Priya Patel", "Assistant Manager", 55000, 1),
(1047, "Ravi Kumar", "Executive", 40000, 1),
(1068, "Sneha Reddy", "Clerk", 30000, 1),
(1103, "Arjun Singh", "Manager", 78000, 2),
(1113, "Anjali Gupta", "Assistant Manager", 56000, 2),
(1135, "Vikram Mehta", "Executive", 42000, 2),
(1158, "Neha Sharma", "Clerk", 31000, 2),
(1298, "Suresh Rao", "Manager", 80000, 3),
(1202, "Maya Patel", "Assistant Manager", 57000, 3),
(1225, "Deepak Joshi", "Executive", 43000, 3),
(1248, "Aarti Verma", "Clerk", 32000, 3),
(1475, "Rajesh Nair", "Manager", 79000, 4),
(1293, "Kavita Singh", "Assistant Manager", 58000, 4),
(1315, "Siddharth Desai", "Executive", 44000, 4),
(1337, "Manoj Verma", "Clerk", 33000, 4),
(1542, "Rita Singh", "Manager", 77000, 5),
(1382, "Amit Verma", "Assistant Manager", 54000, 5),
(1404, "Jaya Kumar", "Executive", 41000, 5),
(1426, "Neeraj Kumar", "Clerk", 30000, 5),
("1514", "Rohit Sinha", "Clerk", 32000, 5),
("1524", "Anjali Patel", "Clerk", 28000, 5);



CREATE TABLE Books(
	ISBN INT PRIMARY KEY,
	Book_title VARCHAR(50),
	Category VARCHAR(50),
	Rental_Price INT,
	Book_status VARCHAR(5),
	Author VARCHAR(30),
	Publisher VARCHAR(30),
    CHECK (Book_status="Yes" or Book_status = "No")
);


INSERT INTO Books VALUES
(101, "The White Tiger", "Fiction", 100, "Yes", "Aravind Adiga", "HarperCollins India"),
(102, "God of Small Things", "Fiction", 120, "No", "Arundhati Roy", "Penguin India"),
(103, "India After Gandhi", "History", 150, "Yes", "Ramachandra Guha", "Picador India"),
(104, "Midnight’s Children", "Fiction", 130, "Yes", "Salman Rushdie", "Vintage Books India"),
(105, "The Inheritance of Loss", "Fiction", 110, "No", "Kiran Desai", "Penguin India"),
(106, "The Suitable Boy", "Fiction", 180, "Yes", "Vikram Seth", "Aleph Book Company"),
(107, "Train to Pakistan", "Historical Fiction", 90, "No", "Khushwant Singh", "Penguin India"),
(108, "The Immortals of Meluha", "Mythology", 100, "Yes", "Amish Tripathi", "Westland Publications"),
(109, "The Palace of Illusions", "Mythology", 110, "Yes", "Chitra Banerjee Divakaruni", "Picador India"),
(110, "The Secret of the Nagas", "Mythology", 120, "No", "Amish Tripathi", "Westland Publications"),
(111, "The Guide", "Fiction", 95, "Yes", "R. K. Narayan", "Indian Thought Publications"),
(112, "The Blue Umbrella", "Children", 80, "No", "Ruskin Bond", "Rupa Publications"),
(113, "Interpreter of Maladies", "Short Stories", 110, "Yes", "Jhumpa Lahiri", "HarperCollins India"),
(114, "The Hungry Tide", "Fiction", 125, "No", "Amitav Ghosh", "HarperCollins India"),
(115, "The Discovery of India", "History", 160, "Yes", "Jawaharlal Nehru", "Penguin India");


CREATE TABLE Customer(
	Customer_Id INT PRIMARY KEY,
	Customer_name VARCHAR(30),
	Customer_address VARCHAR(30),
	Reg_date DATE
);  

INSERT INTO Customer VALUES
(10001, "Rahul Sharma", "123 MG Road, Delhi", "2021-02-15"),
(10002, "Anil Kumar", "251 DLF Phase 3, Gurgaon", "2021-03-16"),
(10003, "Arjun Reddy", "87 Jubilee Hills, Hyderabad", "2021-04-29"),
(10004, "Manoj Dubey", "75 Alipore, Kolkata", "2021-06-08"),
(10005, "Sneha Gupta", "89C Salt Lake, Kolkata", "2021-07-30"),
(10006, "Suresh Iyer", "43 T. Nagar, Chennai", "2021-09-01"),
(10007, "Vikas Chauhan", "119 Whitefield, Bangalore", "2021-12-19"),
(10008, "Nisha Roy", "229 Gachibowli, Hyderabad", "2022-01-05"),
(10009, "Amit Kumar", "67B Koramangala, Bangalore", "2022-05-23"),
(10010, "Deepak Joshi", "90 Banjara Hills, Hyderabad", "2022-08-26"),
(10011, "Vikram Rao", "12 Green Park, Chennai", "2022-09-10"),
(10012, "Gaurav Bhatia", "163 Sector 14, Gurgaon", "2022-10-02"),
(10013, "Rajesh Kapoor", "31 Connaught Place, Delhi", "2022-11-11"),
(10014, "Priya Singh", "45A Park Street, Mumbai", "2023-03-19"),
(10015, "Sonia Gill", "141 Gariahat, Kolkata", "2023-04-04"),
(10016, "Pooja Mehta", "65 Rajouri Garden, Delhi", "2023-01-22"),
(10017, "Ravi Prasad", "207 Begumpet, Hyderabad", "2023-09-03"),
(10018, "Shweta Arora", "53 Hauz Khas, Delhi", "2023-10-16"),
(10019, "Rohit Sinha", "56 Indiranagar, Bangalore", "2023-12-07"),
(10020, "Neha Verma", "34 Sector 15, Gurgaon", "2024-01-18"),
(10021, "Kavita Desai", "21 Vashi, Navi Mumbai", "2024-03-12"),
(10022, "Ayesha Khan", "97 Malabar Hill, Mumbai", "2024-07-21");


CREATE TABLE IssueStatus(
	Issue_Id INT PRIMARY KEY AUTO_INCREMENT,
	Issued_cust INT,
	Issued_book_name VARCHAR(50),
	Issue_date DATE,
	Isbn_book INT,
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);


INSERT INTO IssueStatus VALUES
(1, 10005, "The Inheritance of Loss", "2022-10-20", 105),
(2, 10008, "The Secret of the Nagas", "2022-11-13", 110),
(3, 10010, "The Blue Umbrella", "2023-01-15", 112),
(4, 10014, "Train to Pakistan", "2023-01-20", 107),
(5, 10014, "God of Small Things", "2023-01-20", 102),
(6, 10022, "The Hungry Tide", "2024-02-18", 114);



CREATE TABLE ReturnStatus(  
	Return_Id INT PRIMARY KEY AUTO_INCREMENT,
	Return_cust INT,
	Return_book_name VARCHAR(50),  
	Return_date DATE,
	Isbn_book2 INT,
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);


INSERT INTO ReturnStatus VALUES
(1, 10002, "India After Gandhi", "2023-06-20", 103),
(2, 10005, "Midnight’s Children", "2023-07-10", 104),
(3, 10020, "The Immortals of Meluha", "2024-02-22", 108),
(4, 10019, "The Guide", "2024-03-15", 111),
(5, 10020, "The Discovery of India", "2024-04-03", 115),
(6, 10008, "Interpreter of Maladies", "2024-05-01", 113);


-- 1. Retrieve the book title, category, and rental price of all available books. 

SELECT Book_title, Category, Rental_Price FROM Books WHERE Book_status = "Yes";

-- 2. List the employee names and their respective salaries in descending order of salary.

SELECT Emp_name, Salary From Employee ORDER BY Salary DESC;
 
-- 3. Retrieve the book titles and the corresponding customers who have issued those books. 

SELECT IssueStatus.Issued_book_name, Customer.Customer_name
FROM IssueStatus
INNER JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_Id;

-- 4. Display the total count of books in each category. 

SELECT Category, count(*) AS Count FROM Books GROUP BY Category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 

SELECT Emp_name, Position, Salary FROM Employee WHERE Salary > 50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 

SELECT Customer_name, Reg_date 
FROM Customer
WHERE (Reg_date < "2022-01-01" AND Customer_Id NOT IN (SELECT Issued_cust FROM IssueStatus));

-- 7. Display the branch numbers and the total count of employees in each branch. 

SELECT Branch_no, count(*) AS Count FROM Employee GROUP BY Branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023.

SELECT Customer_name FROM Customer 
WHERE Customer_Id IN (SELECT Issued_cust FROM IssueStatus WHERE (year(Issue_date) = 2023 AND monthname(Issue_date) = "June"));


-- 9. Retrieve book_title from book table containing history. 

SELECT Book_title FROM Books WHERE Category = "History";

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees

SELECT Branch_no, count(*) AS Count FROM Employee GROUP BY Branch_no HAVING Count > 5;

-- 11. Retrieve the names of employees who manage branches and their respective branch addresses.

SELECT Employee.Emp_name, Branch.Branch_address 
FROM Branch
LEFT JOIN Employee ON Branch.Manager_Id = Employee.Emp_Id;

-- 12.  Display the names of customers who have issued books with a rental price higher than Rs. 25.

SELECT Customer_name FROM Customer 
WHERE Customer_Id IN 
(SELECT Issued_cust FROM IssueStatus 
 WHERE Isbn_book IN (SELECT ISBN FROM Books WHERE Rental_Price > 25));

