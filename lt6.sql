CREATE TABLE library.BOOKS (
    book_id int primary key ,
    title text ,
    author text ,
    published_year int,
    available boolean default true
);

CREATE TABLE library.MEMBERS (
    member_id int primary key ,
    name varchar(50) ,
    email varchar(100) not null ,
    join_date date default CURRENT_DATE
);