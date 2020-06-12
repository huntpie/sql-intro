
CREATE TABLE "Employees"
(
  "FullName" TEXT NOT NULL,
  "Salary" INT,
  "JobPosition" TEXT,
  "PhoneExtension" INT,
  "IsPartTime" TEXT
);


INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES
  ('Jackie', 700, 'Accountant', 222, 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES
  ('Will', 300, 'Consultant', 122, 'Yes');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime")
VALUES
  ('Ben', 800, 'Cook', 010, 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime")
VALUES
  ('Lazy Larry', 10000, 'Influencer', 310, 'Yes');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime")
VALUES
  ('Whitney', 100, 'Cook', 323, 'Yes');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime")
VALUES
  ('Reggie', 900, 'Lawyer', 111, 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime")
VALUES
  ('Lisa', 220, 'Accountant', 012, 'Yes');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime")
VALUES
  ('Jill', 650, 'Accountant', 123, 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime")
VALUES
  ('Jeeves', 750, 'Consultant', 324, 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime")
VALUES
  ('Barry', 150, 'Consultant', 444, 'Yes');



SELECT "FullName", "PhoneExtension"
FROM "Employees"
WHERE "IsPartTime" = 'No';


INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition","PhoneExtension", "IsPartTime")
VALUES
  ('Art', 450, 'Software developer', 393, 'Yes');

UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';

DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR
(10);



/* 
Part 2 Foreign Keys
*/

CREATE TABLE "Departments"
(
  "Id" SERIAL PRIMARY KEY,
  "DepartmentName" TEXT,
  "Building" TEXT
);

ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL 
 REFERENCES "Departments"
("Id");

CREATE TABLE "Orders"
(
  "Id" SERIAL PRIMARY KEY,
  "OrderNumber" TEXT NOT NULL,
  "DatePlaced" TIMESTAMP,
  "Email" TEXT
);

CREATE TABLE "Products"
(
  "Id" SERIAL PRIMARY KEY,
  "Price" DOUBLE PRECISION,
  "Name" TEXT NOT NULL,
  "Description" TEXT,
  "QuantityInStock" INT
);




CREATE TABLE "ProductOrders"
(
  "ProductId" INT REFERENCES "Products" ("Id"),
  "OrderId" INT REFERENCES "Orders" ("Id"),
  "Id" SERIAL PRIMARY KEY,
  "OrderQuantity" INT NOT NULL
);

INSERT INTO "Departments"
  ("DepartmentName", "Building")
VALUES
  ('Development', 'Main');

INSERT INTO "Departments"
  ("DepartmentName", "Building")
VALUES
  ('Marketing', 'North');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES
  ('Tim Smith', 40000, 'Programmer', 123, false, 1);

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES
  ('Barbara Ramsey', 80000, 'Manager', 1234, false, 1);

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES
  ('Tom Jones', 32000, 'Admin', 456, true, 2);


INSERT INTO "Products"
  ("Price", "Name", "Description", "QuantityInStock")
VALUES
  (12.45, 'Widget', 'The Original Widget', 100);

INSERT INTO "Products"
  ("Price", "Name", "Description", "QuantityInStock")
VALUES
  (99.99, 'Flowbee', 'Perfect for haircuts', 3);


INSERT INTO "Orders"
VALUES
  (DEFAULT, 'X529', 'Jan 1 2020 4:55 PM', 'person@example.com');

INSERT INTO "ProductOrders"
  ("ProductId", "OrderId", "Id", "OrderQuantity")
VALUES
  (1, 1, 1, 3);

INSERT INTO "ProductOrders"
  ("ProductId", "OrderId", "OrderQuantity")
VALUES
  (2, 1, 2);

SELECT "FullName", "DepartmentId"
FROM "Employees"
WHERE EXISTS ( SELECT "DepartmentId"
FROM "Employees");

SELECT "PhoneExtension"
FROM "Employees"
WHERE EXISTS ( SELECT "DepartmentName"
FROM "Departments");

SELECT *
FROM "ProductOrders"
WHERE ("ProductId") = 2;


DELETE FROM "ProductOrders"
WHERE ("ProductId") = 2 AND
  ("OrderId") = 1;

  







