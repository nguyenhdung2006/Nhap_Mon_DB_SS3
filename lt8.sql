ALTER TABLE library.books
ADD genre varchar(255) ;

ALTER TABLE library.books
RENAME COLUMN available to is_available;

ALTER TABLE library.Members
DROP COLUMN email;

DROP TABLE sales.orderdetails;


