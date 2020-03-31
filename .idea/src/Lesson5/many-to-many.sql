DROP DATABASE IF EXISTS ManyToMany;
create DATABASE ManyToMany;
USE ManyToMany;

create table category(
category_id INT NOT NULL AUTO_INCREMENT,
category_name VARCHAR(100) NOT NULL,
PRIMARY KEY(category_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

select * from category;

create table author(
author_id INT NOT NULL AUTO_INCREMENT,
author_full_name VARCHAR(100) NOT NULL UNIQUE,
PRIMARY KEY(author_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

select * from author;

create table book(
book_name VARCHAR (200) NOT NULL,
category_id INT,
author_id INT,
identifier INT NOT NULL,
CONSTRAINT FOREIGN KEY (category_id) references Category (category_id)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FOREIGN KEY (author_id) REFERENCES Author (author_id)
ON DELETE CASCADE ON UPDATE CASCADE,

PRIMARY KEY (category_id, author_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

INSERT INTO author (author_full_name) VALUES
( 'Oscar Wilde'),
('Harper Lee'),
('George Orwell'),
('J. K. Rowling');

select * from author;

INSERT INTO category (category_name) VALUES
('Philosophical fiction'),
('Novel'),
('Dystopian'),
('Fantasy');

select * from category;

INSERT INTO book (book_name, author_id, category_id, identifier) VALUES
('Harry Potter And The Philosopher`s Stone',1,1,4),
('1984',2,3,3),
('The Picture of Dorian Gray',3,1,1),
('To Kill a Mockingbird',4,2,2);

SELECT author.author_full_name, book.identifier, category.category_name,book.book_name 
FROM author JOIN book JOIN category
ON book.identifier=author.author_id AND
author.author_id = category.category_id
ORDER BY category.category_name, book.identifier DESC, author.author_full_name;




