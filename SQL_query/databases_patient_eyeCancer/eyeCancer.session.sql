show tables;
SELECT * from mentah limit 5 ;
DESC mentah;

# table data patient 
create table Biodata_patient as
select Patient_ID, Age, Gender, Family_History, Country 
from mentah;
SELECT * from Biodata_patient  limit 10;

# table data diagnosis
create table diagnosis as 
select Patient_ID, Cancer_Type, Laterality, Date_of_Diagnosis,
Stage_at_Diagnosis, Genetic_Markers from mentah;
select * from diagnosis ;

# table data treatment 
create table treatment  as 
select Patient_ID, Treatment_Type, Surgery_Status, Radiation_Therapy,
Chemotherapy, Outcome_Status, Survival_Time_Months
from mentah;
SELECT * from treatment;

# connection
desc Biodata_patient;
desc diagnosis;
desc treatment;

SELECT Patient_ID , count(*) from diagnosis
GROUP BY Patient_ID ;

#----------------------
# Biodata_patient
# delete duplicate
ALTER table Biodata_patient 
add id int AUTO_INCREMENT PRIMARY KEY;
DESC Biodata_patient;

DELETE p1
FROM Biodata_patient p1
JOIN Biodata_patient p2
ON p1.Patient_ID = p2.Patient_ID
WHERE p1.id > p2.id;

SELECT Patient_ID , count(*) from Biodata_patient
GROUP BY Patient_ID ;

alter table Biodata_patient
drop id;

# -----------------------
# cek duplicate
select * from diagnosis p1
join diagnosis p2 on 
p1.Patient_ID =p2.Patient_ID;

alter table diagnosis 
add id int AUTO_INCREMENT PRIMARY KEY ;

# delete duplicate 
delete p1 
from diagnosis p1 
join diagnosis p2 
on p1.Patient_ID = p2.Patient_ID
where p1.id > p2.id;

alter table diagnosis
drop id;

# modifikasi column
ALTER table diagnosis
add column code_diagnosis int AUTO_INCREMENT PRIMARY KEY ;

alter table diagnosis
add constraint diagnosis
foreign key (Patient_ID) references 
Biodata_patient(Patient_ID);

# ---------------------------------
# delete dulicate 
alter table treatment 
add id int AUTO_INCREMENT primary key ;

delete p1 
from treatment p1
join treatment p2 
on p1.Patient_ID = p2.Patient_ID
where p1.id > p2.id;

alter table treatment
drop id;

ALTER table treatment
add column code_treatment int AUTO_INCREMENT PRIMARY KEY;

alter TABLE treatment
add constraint treatment
foreign key (Patient_ID) references 
Biodata_patient(Patient_ID);

