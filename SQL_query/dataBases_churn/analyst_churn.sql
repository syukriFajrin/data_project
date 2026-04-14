show tables;
desc Account;
desc Customer;
desc churn_status;

# customer 
# 1 total customer
select count(*) as total_customer 
from  Customer;

# 2 geography 
select geography,count(*)*100/10000 as persentase
from Customer group by geography;

# 3 data gender
select gender ,count(*)*100/10000 as persentase
from Customer group by gender;

# 4 age 
select avg(age) as average, std (age) standar_deviasi
from Customer;

# Exited Churn
# persentase 
select Exited, count (*)*100/10000 from 
churn_status group by Exited;


# 1 credit score
# total
select avg(CreditScore),std(CreditScore)
from Account;
# exited
select avg(A.CreditScore),std(A.CreditScore) 
from Account A Join churn_status cs 
on A.CustomerId = cs.CustomerId 
where cs.exited=1;

# 2 tenure

SELECT Tenure, count(*)
from Account GROUP BY Tenure;

# exited
SELECT a.Tenure, count(*)
from Account a 
join churn_status cs 
on a.CustomerId = cs.CustomerId
where cs.exited =1
GROUP BY a.Tenure; 

# 3 balance
select Avg(Balance), std(Balance)
from Account;

select Avg(a.Balance), std(a.Balance)
from Account a JOIN churn_status cs
on a.CustomerId = cs.CustomerId 
WHERE cs.Exited =1;

# 4 has card 

SELECT HasCrCard , count(*)*100/10000
from Account GROUP BY HasCrCard;
#exited
SELECT a.HasCrCard, count(*)*100/10000
from Account a 
join churn_status cs 
on a.CustomerId = cs.CustomerId
where cs.exited =1
GROUP BY a.HasCrCard; 

# 5 Is active member 

SELECT IsActiveMember , count(*)*100/10000
from Account GROUP BY IsActiveMember;
#exited
SELECT a.IsActiveMember, count(*)*100/10000
from Account a 
join churn_status cs 
on a.CustomerId = cs.CustomerId
where cs.exited =1
GROUP BY a.IsActiveMember; 

# 6 Estimated salary
select Avg(EstimatedSalary), std(EstimatedSalary)
from Account;

select Avg(a.EstimatedSalary), std(a.EstimatedSalary)
from Account a JOIN churn_status cs
on a.CustomerId = cs.CustomerId 
WHERE cs.Exited =1;
