SELECT * from library.book1;
USE library;
UPDATE book1 SET author_last_name  = "LAST_NAME_UPDATED" where id in(1,2);
SELECT name,count(awards) from book1;
SELECT * from book1 where number_of_pages = (select min(number_of_pages) from book1);
SELECT name, max(number_of_pages) from book1;
SELECT avg(price) from book1;
SELECT count(*) from book1 where category  = 'mystery';
SELECT min(price) from book1;
SELECT name,min(price) from book1;
SELECT name,round(price, 4) from book1 order by name;
SELECT * from book1 order by date_of_publication limit 5, 5;
SELECT * from book1 order by date_of_publication limit 10, 6;
select * from book1 where name like '2_0%';
select * from book1 where date_of_publication like '%2017-02-_%';
select * from book1 where author_email like '%herb____@gmail.com';
#вивести книжки де ціна на проміжку: 1. 50-120, 2. не включаючи проміжок 200-600
select name,price from book1 where price between 50 and 120 order by price desc;
select name,price from book1 where price not between 200 and 600 order by price;
delete from book1 where isbn ='5790578963151';
SELECT * from library.book1;
delete from book1 where name = 'The Hunger Games';
delete from book1 where id = 2;
SELECT * from library.book1;










