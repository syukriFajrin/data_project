# databases

show tables;

# Customer table 
desc customer ;
SELECT * from customer limit 10;

# cek duplicate
select customer_type, count(*) from customer 
Group by customer_type;

# delete duplicate 
# 1 cek duplicate 
create table customer_clean as 
# 2 hapus duplicate
select distinct customer_type from 
customer;
show tables;
drop TABLE customer;
rename table customer_clean to customer;
SELECT * from customer;

# Transaction table
select * from transaction_;
# 1 cek duplicate
select transaction_id, count (*) from transaction_
group by transaction_id; 

#  product 
select * from product;
# 1 cek duplicate 
select product_id, count(*) from product
group by product_id;
# 3 hapus data duplicate
select  distinct  product_id from product;

ALTER TABLE product
ADD id INT AUTO_INCREMENT PRIMARY KEY;

DELETE p1
FROM product p1
JOIN product p2
ON p1.product_id = p2.product_id
AND p1.id > p2.id;

SELECT * from product;
SELECT product_id ,count(*) from product
group by product_id;

# Koneksi antara table 

# 1 customer
Desc customer ;
Alter table customer
modify customer_type varchar (100) primary key  ; 
Alter table customer
modify customer_type varchar (100) not null ; 
Desc customer;

# 2 product 
Desc product ;
ALTER table product 
drop id ;
ALTER table product
modify product_id varchar (225) not null primary key;
Desc product ;

# 3 transaction 
desc transaction_ ;
ALTER TABLE transaction_ 
modify transaction_id varchar (225) not null primary key; 

ALTER TABLE transaction_
ADD CONSTRAINT productId
FOREIGN KEY (product_id)
REFERENCES product(product_id);

Alter TABLE transaction_
add constraint customerId
FOREIGN KEY (customer_type)
References customer(customer_type)


# get data with join 
select 
t.transaction_id,
t.product_id,
p.category
from transaction_ t
join product p
on p.product_id= t.product_id;
