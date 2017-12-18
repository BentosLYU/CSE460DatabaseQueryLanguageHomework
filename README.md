# PostgreSQL
Here is the description for the Project1, Project2, Project3:
Project 1 : Design the database schema:
You are to design and implement the database schema for TinyTwitter, which is
a social network website provides simple functions, main functions of TinyTwitter
are:
• User management: user sign up, user login/logout.
• Tweet management: create and post new tweet, delete a tweet.
• Friendship management: follow, unfollow.
• User-Tweet relationship management: like, comment, re-tweet.
Your DB schema must be able to support all the functions listed above. Your
are required to use E/R modeling (an online E/R diagram tool is https://
www.draw.io/) to model the data, then map your E/R model to a relational
database schema and implement the mapped schema use a DBMS by a set of
CREATE TABLE statements. Recommended DBMSes are:
• PostgreSQL (https://www.postgresql.org/download/)
• MySQL(https://dev.mysql.com/downloads/), you must install MySQL
Community Server to use MySQL, and you need one of MySQL Shell and
MySQL WorkBench for SQL development. If you need a GUI, you may
prefer to use MySQL WorkBench.
You also need to write how your relational DB schema supports all the required
functions. The final product of this is a report (.pdf file) and a SQL file (.sql
file type) which contains all the CREATE TABLE statements you used for implementing
your DB schema. More details of the report will be given later.
The specific requirements for each function of TinyTwitter are given in this
section. Note that you need to analyze and design the entity sets ,
attributes and relationship sets by yourself, while this project description
only give some of them for clarifying the system requirements.
3.1 User management
Users sign up use their email addresses, the email addresses are the usernames
of the users, users need to set their passwords and display names, where:
• username, password and display name are strings.
• one account, i.e. one username, has only one display name, and one display
name corresponds to only one username.
• one email address can be used to register only one account.
3.2 Tweet management
Users can create a new tweet, which is a string consists of up to 140 characters
(including special characters and white spaces).
Users can choose to post their new tweets or save an un-posted tweet as a
draft.
The basic set of attributes of tweets are:
• time: the posted time of a tweet
• content: the tweet’s content
You need to think about and model the drafting function by yourself.
3.3 User relationship management
A user can follow other users, by following other users, users can see the posted
tweets from their following users. By default, the users see their own posted
tweets and the posted tweets from their following users after they login, and all
the tweets will be displayed by the order newest first (newsfeed style).
3.4 User-Tweet relationship management
Users can like a tweet, every user can see the number of “likes” of a tweet, users
can also explore who liked the tweet.
Users can comment a tweet, every user can see the number of comments of
a tweet and can also see the details of comments, including the content of the
comment and the user who posted the comment.
Users can also re-tweet others’ tweets, either with additional comments or without
additional comments.
Project 2:
Problem 1:  Consider below relational DB schema: Flight(Origin, Destination, Cost) for
a 
ight information management system, keys are underlined, see 
ight.sql for
more details of the table. Answer following questions and write your answers in
your prob1.sql le, use comments to separate your answers for each question.
1.1 (10 points) Run the CREATE TABLE statement in 
ight.sql use
the DBMS on your own laptop, and insert following data into the table,
write your INSERT INTO statement(s) in your .sql le.
Origin Destination Cost
ATL ORD 1000
BUF ORD 1500
BUF JFK 300
JFK ORD 200
JFK LAX 600
BUF LAX 2000
LAX LAS 500
JFK CLT 150
JFK MIA 300
BUF BOS 150
DTW BUF 200
LAX SEA 100
DTW IAH 800
IAH EWR 870
 1.2(30 points) Given a relation instance I of Flight, dene cycle as:
start from an origin A, if there's a path to 
y back to A, then we say
there's a cycle for the origin A, e.g. if we have tuples < A;B; J >;<
B;C;K >;< C; A;L >;< D; A;M >, then there's a cycle for A, a cycle
for B and also a cycle for C, but no cycle for D.
Assuming that there's no cycle for any of the origin in the instance, write
a SQL query to nd all the destinations that are reachable from `BUF'
and the lowest costs to 
y to those destinations.
 1.3(10 points) Insert a new 
ight record:
Origin Destination Cost
SEA LAX 150
into the 
ight table, what could happen if you run your query for 1.2 on
the updated set of data? and why? Write your answer for this question
in detail as comments in your .sql le.
Problem 2 : Read and understand the DB schema in enrollment.sql, Student.dept indicates
the departments of the students, Enroll.grade represents the GPA, Course.dept
contains just the departmental acronym, e.g., 'CSE', indicating the departments
that oer the courses, write following SQL queries in your prob2.sql le, use
comments to separate your answers for each question. You are encouraged to
create your own testing data to verify your queries.
2
 2.1(10 points) Find the names of students who are not enrolled in any
course oered by 'CSE' department.
 2.2(15 points) For every student, list the student name and the cumu-
lative GPA (if GPA is not applicable to a student, still list the student
name and return null for the cumulative GPA value).
 2.3 (25 points) For every department, list the department name and the
total number of courses such that more than half of the students enrolled
in such a course are from outside of the department that oers the course.
Project 3:
You are asked to design an XML database for TinyFICO, which is a company
focuses on credit scoring services. TinyFICO collects the bank account data of
U.S. citizens and thus calculate the credit scores for the citizens.
TinyFICO has three major types of data to manage: customer data, bank
information data and bank account data. More specically, you are given below
list of requirements:
 TinyFICO creates a record for each customer, and each record consists
of:
{ An unique SSN, SSN is also the key for customer record.
{ A legal name.
{ Zero or more former name(s).
{ At least one address, each address consists of street, city, state, and
zipcode.
{ At least one phone number.
{ A list of bank accounts that belong to the customer. (The require-
ments of bank account data will be given soon).
 TinyFICO creates a record for each bank, and each record consists of:
{ An unique bank code, which is also a key.
{ A bank name.
 TinyFICO also creates a record for each bank account, and each record
consists of:
{ An unique bank account number, this account number is also the
key.
{ A bank code, bank code indicates which bank the account belongs
to.
{ A type, which indicates if the bank is a checking account, credit
account, or a saving account, note only these three types are valid
types for a bank account.
Write a DTD to model the above requirements. Use the XML Validation tool
at https://www.xmlvalidation.com/ to validate your DTD with your own
testing XML data. For this problem, you need to submit a .xml le containing
your DTD and your testing data that is valid against your DTD (note: testing
data shouldn't be empty, and your testing data should be able to show all the
modeling components of your DTD).
Problem 2 (50 points) XQuery
Given books.xml, write below queries in your prob2.txt le, use XQuery com-
ments to separate your answers, e.g. (: answer for 2.1 :). Use eXistDB
to test and verify your answers, and the le path of books.xml should be
"/db/books.xml".
2.1 Find all the books co-authored by John and Mary.
2.2 Find all the books authored by John but not by Mary
2.3 Find the author names and the total numbers of their 2000 publications
for all the authors who have publications in 2000, the result should be sorted in
lexicographical order by the author names.
