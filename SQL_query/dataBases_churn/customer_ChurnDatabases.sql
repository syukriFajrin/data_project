CREATE table churn_.mentah as
SELECT * from dataScience.churn;

# mentahan data 
desc mentah;
SELECT * from mentah limit 10;
SELECT count(*) from mentah ;

# cek id_customer 
select CustomerId, count(*) from
mentah group by CustomerId;

# Pengelompokkan tabel
# 1 tabel identitas customer 
create table Customer_ as 
select CustomerId, Surname, Geography, Gender, Age
from mentah;
SELECT * from Customer_ ;

# 2 Account
create table Account_ as 
select CustomerId, CreditScore, Tenure, 
Balance, NumOfProducts, HasCrCard, IsActiveMember,
EstimatedSalary from mentah;
SELECT * from Account_;

# 3 Churn status
create table Churn_status as 
select CustomerId, Exited
from mentah;
SELECT * from Churn_status;

# Hubungan antara table
Desc Customer_;
Desc Account_;
Desc Churn_status;

ALTER TABLE Customer_ 
Modify CustomerId int not null primary key;

ALTER TABLE Account_ 
add column code int AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE Churn_status
ADD column code int AUTO_INCREMENT PRIMARY KEY;

ALTER table Account_ 
ADD CONSTRAINT fk_accounts_customer
FOREIGN KEY (CustomerId)
REFERENCES Customer(CustomerId);

ALTER table Churn_status
add constraint fk_status_customer
foreign key (CustomerId)
references Customer(CustomerId)
