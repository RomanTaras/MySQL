CREATE DATABASE book_info;
SELECT DATABASE();
USE book_info;

CREATE TABLE book (
    name VARCHAR(120) NOT NULL,
    description VARCHAR(20) DEFAULT 'no description',
    date_of_publication DATE NOT NULL DEFAULT '2018-01-01',
    author VARCHAR(60) NOT NULL,
    category VARCHAR(30) NOT NULL
);

SELECT * from book;

INSERT INTO book 
values
 ('Anna Karenina', 'novel', '1987-05-03', 'Lev_Tolstoy', 'novel'),
 ('The Lord of the Rings','adventure', '1986-08-15', 'J.R.R. TOLKIEN', 'novel'),
 ('Don Quixote','adventure','1605-05-18','MIGUEL DE CERVANTES','novel'),
 ('The Picture of Dorian Gray','horor','1890-07-10','Oscar Wilde','novel'),
 ('War and Peace','history','1865-04-05','Lev_Tolstoy','novel');
 INSERT INTO book (name, author, category)
values 
 ('Pride and Prejudice', 'Jane Austen','novel'),
 ('Harry Potter And The Philosophers Stone','JK Rowling','fantasy' ),
 ('Harry Potter And The Chamber Of Secrets','JK Rowling','fantasy' ),
 ('Harry Potter And The Prisoner Of Azkaban','JK Rowling','fantasy' ),
 ('The Pillars Of The Earth','Ken Follett','fiction');
 
 


