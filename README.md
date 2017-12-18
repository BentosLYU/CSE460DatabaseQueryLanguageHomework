# PostgreSQL
Project 1 : Design the database for the Twitter
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
