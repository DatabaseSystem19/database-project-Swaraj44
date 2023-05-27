drop TABLE payments;
drop TABLE orders;
drop TABLE customers;
drop TABLE products;


CREATE TABLE customers (
  customer_id NUMBER(10) PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  address VARCHAR(200),
  date_of_birth DATE
);

CREATE TABLE products (
  product_id NUMBER(10) PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description VARCHAR(1000),
  price NUMBER(10,2) NOT NULL,
  category VARCHAR(100)
);

CREATE TABLE orders (
  order_id NUMBER(10) PRIMARY KEY,
  customer_id NUMBER(10) REFERENCES customers(customer_id) ON DELETE CASCADE,
  product_id NUMBER(10) REFERENCES products(product_id) ON DELETE CASCADE,
  order_date DATE NOT NULL,
  quantity NUMBER(10) NOT NULL,
  status VARCHAR(20) NOT NULL
);

CREATE TABLE payments (
  payment_id NUMBER(10) PRIMARY KEY,
  order_id NUMBER(10) REFERENCES orders(order_id) ON DELETE CASCADE,
  amount NUMBER(10,2) NOT NULL,
  payment_date DATE NOT NULL
);





---Add column in the table
alter table payments add Payment_type char(20);

---Modify column definition in the table
alter table payments modify Payment_type varchar(10);

---Rename the column name
alter table payments rename column Payment_type to PaymentType;

---Drop the column from table
alter table payments drop column PaymentType;




