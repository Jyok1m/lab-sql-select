-- Challenge 1
SELECT
    a.au_id     AS "AUTHOR ID",
    a.au_lname  AS "LAST NAME",
    a.au_fname  AS "FIRST NAME",
    t.title     AS "TITLE",
    p.pub_name  AS "PUBLISHER"
FROM titleauthor ta
    JOIN authors a      ON a.au_id = ta.au_id -- lookup vers authors
    JOIN titles t       ON t.title_id = ta.title_id -- lookup vers titles
    JOIN publishers p   ON p.pub_id = t.pub_id; -- lookup vers publishers

-- Challenge 2
SELECT
    a.au_id     AS "AUTHOR ID",
    a.au_lname  AS "LAST NAME",
    a.au_fname  AS "FIRST NAME",
    p.pub_name  AS "PUBLISHER",
    COUNT(t.title_id) AS "TITLE COUNT"
FROM titleauthor ta
    JOIN authors a      ON a.au_id = ta.au_id
    JOIN titles t       ON t.title_id = ta.title_id
    JOIN publishers p   ON p.pub_id = t.pub_id
GROUP BY a.au_id, a.au_lname, a.au_fname, p.pub_name
ORDER BY a.au_id DESC;
