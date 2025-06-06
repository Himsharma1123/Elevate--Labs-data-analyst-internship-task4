--SQL Queries


- Select query with Group by and order by clause 

ques. 1 - Country with the Highest Number of Invoices

SELECT billing_Country, COUNT(invoice_id) AS NumberOfInvoices
FROM  Invoice
GROUP BY  billing_Country
ORDER BY NumberOfInvoices DESC LIMIT 1;


ques. 2 - Who is the senior most employee based on the job title

SELECT * from employee 
ORDER BY levels DESC
LIMIT 1;


Ques. 3 - What are top 3 values of total invoice

SELECT total FROM invoice
ORDER BY total DESC 
LIMIT 3


- Join example

Ques. 4 - Who is the best customer? customer who spends most money will be declared as best customer.
 
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) as total
FROM customer 
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total
DESC LIMIT 1;


- Query using AVG, Subqueries 

Ques. 5 Return all the tracks that have track length longer that average track length. Return the name and milliseconds of eacg track.

SELECT name, milliseconds
FROM track
WHERE milliseconds > (
	SELECT AVG(milliseconds) AS avg_track_length 
	FROM track)
ORDER BY milliseconds DESC;