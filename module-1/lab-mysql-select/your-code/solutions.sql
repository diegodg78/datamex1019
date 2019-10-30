use publications;
#CHALLENGE 1
select titleauthor.au_id, authors.au_lname as LastName, authors.au_fname as FirstName, titles.title, publishers.pub_name as publisher
from titles
left join publishers
on titles.pub_id = publishers.pub_id
left join titleauthor
on titles.title_id = titleauthor.title_id
left join authors
on authors.au_id = titleauthor.au_id
;

#CHALLENGE 2

select authors.au_id as authorsID, authors.au_lname as LastName, authors.au_fname as FirstName,pubs.pub_name as Publisher,count(title.title) as TitleCount
from publications.authors authors
left join publications.titleauthor titaut
on authors.au_id=titaut.au_id
left join publications.titles as title
on titaut.title_id=title.title_id
left join publications.publishers as pubs
on title.pub_id = pubs.pub_id
group by authors.au_id,pubs.pub_name
;

#CHALLENGE 3

select authors.au_id as authorsID, authors.au_lname as LastName, authors.au_fname as FirstName,sum(sales.qty) as ventas
from publications.authors authors
left join publications.titleauthor titaut
on authors.au_id=titaut.au_id
left join publications.titles as title
on titaut.title_id=title.title_id
left join publications.sales as sales
on title.title_id=sales.title_id
group by authors.au_id
order by ventas desc
limit 3
;

#CHALLENGE4

select authors.au_id as authorsID, authors.au_lname as LastName, authors.au_fname as FirstName,sum(sales.qty) as ventas
from publications.authors authors
left join publications.titleauthor titaut
on authors.au_id=titaut.au_id
left join publications.titles as title
on titaut.title_id=title.title_id
left join publications.sales as sales
on title.title_id=sales.title_id
group by authors.au_id
order by ventas desc
;
