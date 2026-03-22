CREATE TABLE sales.Products (
                                product_id serial primary key ,
                                product_name varchar(50) ,
                                price DECIMAL(10,2) ,
                                stock_quantity int
);

CREATE TABLE sales.Members (
                               member_id serial primary key,
                               name int ,
                               birthday DATE not null
);

CREATE TABLE sales.Orders (
                              order_id serial primary key ,
                              order_date DATE DEFAULT CURRENT_DATE ,
                              member_id int ,
                              foreign key (member_id) REFERENCES sales.Members(member_id)
);

CREATE TABLE OrderDetails (
                              order_detail_id serial primary key ,
                              order_id int ,
                              foreign key (order_id) REFERENCES sales.Orders(order_id) ,
                              product_id int ,
                              foreign key (product_id) REFERENCES sales.Products(product_id) ,
                              quantity int
);