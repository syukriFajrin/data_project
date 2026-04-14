show tables;
desc customer;
desc product;
desc transaction_;

# product 
# 1 total product 
select * from product limit 10;
SELECT count(*)  as total_product 
from product ;

# category 
select category, count(*)/300*100 as persentase
from product group by category;

# Unit price 
select avg(unit_price),std(unit_price)
from product;

# payment type
select payment_type , count(*)*100/300 as persentase 
from product group by payment_type;

# customer
select count(*) as type_customer from customer;

# Transaction
# 1 total transaction
select count (*) from transaction_ ;

# 2 product id total transaction
select product_id, count(*) from
transaction_  group by product_id;

SELECT 
p.category as product_category,
count (t.product_id) as total from transaction_ t 
join product p 
ON  p.product_id = t.product_id 
group BY p.category;


# 3 customer type
select 
customer_type,
count(*) from
transaction_ group by customer_type ;

# 4 avg transaction each product 
select 
p.product_id, ceil(avg (t.quantity) ) as avg
from transaction_ t 
join product p
on
t.product_id = p.product_id
group by p.product_id;

# total penjualan
select  round(sum (total),2) from transaction_;

