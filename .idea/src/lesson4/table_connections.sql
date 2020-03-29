DROP DATABASE IF EXISTS table_connections;
create DATABASE table_connections;
USE table_connections;


create table book(
id INT NOT NULL primary key auto_increment,
name VARCHAR(120) NOT NULL,
description VARCHAR(20) DEFAULT 'no description',
price INT NOT NULL,
isbn VARCHAR(20) NOT NULL UNIQUE,
categoryID INT NOT NULL,
authorID INT NOT NULL
);
 select * from book;
 

create table category(
id INT NOT NULL primary key auto_increment,
name VARCHAR(20) NOT NULL
);
 select * from category;

create table author(
id INT NOT NULL primary key auto_increment,
author_first_name VARCHAR(45) NOT NULL,
author_last_name VARCHAR(45) NOT NULL,
author_email VARCHAR(50) NOT NULL UNIQUE,
birthday_of_author DATE NOT NULL,
authorID INT NOT NULL
);
select * from author;

alter table book add foreign key (categoryID) references category(ID);
alter table book add foreign key (authorID) references author(ID);




  
        
