
CREATE TABLE "Employees" (  
  "FullName" TEXT NOT NULL,  
  "Salary" INT,  
  "JobPosition" TEXT,  
  "PhoneExtension" INT,  
  "IsPartTime" TEXT  
  ); 


INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", 
 "PhoneExtension", "IsPartTime") 
 VALUES ('Jackie', 700, 'Accountant', 222, 'No');   

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "
 PhoneExtension", "IsPartTime") 
 VALUES ('Will', 300, 'Consultant', 122, 'Yes');   

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","P
 honeExtension", "IsPartTime") 
 VALUES ('Ben', 800, 'Cook', 010, 'No'); 

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime") 
 VALUES ('Lazy Larry', 10000, 'Influencer', 310, 'Yes'); 

 INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","P
 honeExtension", "IsPartTime") 
 VALUES ('Whitney', 100, 'Cook', 323, 'Yes');   

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","P
 honeExtension", "IsPartTime") 
 VALUES ('Reggie', 900, 'Lawyer', 111, 'No');  

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","P
 honeExtension", "IsPartTime") 
 VALUES ('Lisa', 220, 'Accountant', 012, 'Yes');  

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","P
 honeExtension", "IsPartTime") 
 VALUES ('Jill', 650, ‘Accountant’, 123, 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","P
 honeExtension", "IsPartTime") 
 VALUES ('Jeeves', 750, 'Consultant', 324, 'No');    

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","P
 honeExtension", "IsPartTime") 
 VALUES ('Barry', 150, 'Consultant', 444, 'Yes');     



SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsP
 artTime" = 'No';  


INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","P
 honeExtension", "IsPartTime") 
 VALUES ('Art', 450, 'Software developer', 393, 'Yes');   

UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Co
 ok';     

DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);  








                                




