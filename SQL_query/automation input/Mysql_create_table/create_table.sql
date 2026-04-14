create database diabetes;
use diabetes;
CREATE table diabetes_(
    gender VARCHAR(10),
    age float,
    hypertension int,
    heart_disese int,
    smoking_hist varchar (20),
    bmi float,
    Hb1 FLOAT ,
    glucos_lev int,
    diabetes int
)engine =innodB;

show tables;
SELECT * from churn LIMIT 5;
SELECT * from diabetes_ limit 5;
