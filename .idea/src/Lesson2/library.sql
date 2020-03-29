DROP DATABASE IF EXISTS library;
create DATABASE library;
USE library;

CREATE TABLE book1 (
	id INT NOT NULL primary key auto_increment,
    name VARCHAR(120) NOT NULL,
    description VARCHAR(20) DEFAULT 'no description',
    date_of_publication DATE NOT NULL DEFAULT '2018-01-01',
    category VARCHAR(30) NOT NULL,
    isbn VARCHAR(20) NOT NULL UNIQUE,
    number_of_pages INT NOT NULL,
    author_first_name VARCHAR(45) NOT NULL,
    author_last_name VARCHAR(45) NOT NULL,
    author_email VARCHAR(50) NOT NULL UNIQUE,
    author_age INT NOT NULL,
    birthday_of_author DATE NOT NULL,
    awards VARCHAR(120),
    price INT NOT NULL
);
    select * from book1;
  

    INSERT INTO book1 (name,description,date_of_publication,category,isbn,number_of_pages,author_first_name,author_last_name,author_email,author_age,birthday_of_author,awards,price)
values
 ('250Years of Industrial Consumption and Transformation of Nature', default,'2017-02-18', 'Earth & Environmental Sciences','9781681086026
',80,'Hubert','Engelbrecht','herb4848@gmail.com',32,'1988-08-13',default,25),
('Chitosan Based Materials and its Applications','Materials Science','2017-01-28','Science','9781681084855
',328,'Luiz','Dotto','dotto@sdf.gmail.com',52,'1968-05-03','Pulitzer',18),
('Fluorescence Microscopy In Life Sciences','Cell Biology','2009-07-08','Life Sciences','9781681085180
','826','Juan','Carlos','carlos_spider@ukr.net',29,'1991-01-01',default,40),
('Pride and Prejudice','self-knowledge',default,'novel','5879216700320','1035','Jane','Austen','died','245','1775-12-17','Nobel prize',90),
('The Lord of the Rings',default,default,'fantasy','5790578963151',850,'J.R.R.','Tolken','sdsdfa@gmail.com', 55,'1965-12-07' , 'Pulitzer',85),
('Then She Was Gone',default,'2017-07-17','drama','9781501154645',255,'Lisa','Jewell', 'jwwell@gmail.com',51,'1968-07-19','Black Maria Film and Video Festival ',108),
('The Hunger Games',default,'2008-08-14','drama','9780439023481',374,'Suzanne','Collins','collins@gmail.com',58,'1968-07-15','Cybils Award for Fantasy & Science Fiction',15),
('Eyes Wide Shut ','erotic mystery','1999-12-06','mystery','58976321177510',426,'Stanley','Kubrick','kubrick@gmail.com',38,'1982-01-01',default,25),
('The Girl With the Dragon Tattoo',default,default,'mystery','8963011000000',1015,'Stig','Larson','lars@sdsdf.mamba.com',27,'1993-11-02',default,12),
('The Tipping Point','best moments','2000-01-01','Non-fiction','9780316346627',304,'Malcolm Timothy','Gladwell','timoska@gbg.com',65,'1955-06-06','best choice 2017',150);



select * from book1;
select * from book1 WHERE  number_of_pages>150;
select * from book1 WHERE  author_age>30;
select * from book1 WHERE  awards is null;
select author_email, name from book1;
select isbn, name from book1;
select name, category from book1 where category = 'fantasy';
select *from book1 where number_of_pages> 200 and author_age  > 25;
select name  from book1 where category = 'novel'or'fantasy';
select * from book1 order by name;
select * from book1 order by author_email;
select * from book1 order by number_of_pages desc;
select isbn from book1;
select distinct isbn from book1;
select * from book1 where date_of_publication>2000-01-01;
select * from book1 where date_of_publication<2010-01-01;














