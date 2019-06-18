#Desafío 

USE publications;



SELECT authors.au_id AS 'AUTHORS ID',
	authors.au_lname AS 'LAST NAME',
	authors.au_fname AS 'FIRST NAME', 
	titles.title AS 'TITLE',
    publishers.pub_name AS 'PUBLISHER'
    
FROM authors 
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id;

#Desafío 2






SELECT authors.au_id AS 'AUTHORS ID',
	authors.au_lname AS 'LAST NAME',
	authors.au_fname AS 'FIRST NAME', 
	titles.title AS 'TITLE',
	publishers.pub_name AS 'PUBLISHER',
    
	COUNT(*) AS 'TITLE COUNT'
    
FROM authors 
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id

GROUP BY titles.title_id, authors.au_id
ORDER BY authors.au_id DESC;

#Desafío 3

SELECT authors.au_id AS 'AUTHORS ID',
	authors.au_lname AS 'LAST NAME',
	authors.au_fname AS 'FIRST NAME', 

SUM(sales.qty) AS TOTAL

FROM authors 
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id
INNER JOIN sales
ON titleauthor.title_id = sales.title_id

GROUP BY titles.title_id, authors.au_id
ORDER BY TOTAL DESC
LIMIT 3

#Desafío 4

