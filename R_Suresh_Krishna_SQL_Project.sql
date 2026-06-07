-- ============================================================
-- LEASE MANAGEMENT SQL PROJECT
-- Author: R. Suresh Krishna
-- ============================================================


-- ============================================================
-- 1. DATABASE & SCHEMA
-- ============================================================

CREATE DATABASE LEASE_DB;
USE LEASE_DB;


-- ============================================================
-- 2. TABLE CREATION
-- ============================================================

-- Properties Table
CREATE TABLE Properties (
    property_id    INT PRIMARY KEY,
    property_name  VARCHAR(100),
    city           VARCHAR(50),
    property_type  VARCHAR(50),
    rent_amount    DECIMAL(10,2)
);

-- Tenants Table
CREATE TABLE Tenants (
    tenant_id    INT PRIMARY KEY,
    tenant_name  VARCHAR(100),
    phone        VARCHAR(15),
    email        VARCHAR(100),
    join_date    DATE
);

-- Lease Agreements Table
CREATE TABLE Lease_Agreements (
    lease_id      INT PRIMARY KEY,
    property_id   INT,
    tenant_id     INT,
    start_date    DATE,
    end_date      DATE,
    monthly_rent  DECIMAL(10,2),
    status        VARCHAR(20),
    FOREIGN KEY (property_id) REFERENCES Properties(property_id),
    FOREIGN KEY (tenant_id)   REFERENCES Tenants(tenant_id)
);

-- Payments Table
CREATE TABLE Lease_Payments (
    payment_id      INT PRIMARY KEY,
    lease_id        INT,
    payment_date    DATE,
    amount          DECIMAL(10,2),
    payment_method  VARCHAR(20),
    FOREIGN KEY (lease_id) REFERENCES Lease_Agreements(lease_id)
);

-- Maintenance Requests Table
CREATE TABLE Maintenance (
    request_id   INT PRIMARY KEY,
    property_id  INT,
    issue        VARCHAR(100),
    cost         DECIMAL(10,2),
    status       VARCHAR(20),
    FOREIGN KEY (property_id) REFERENCES Properties(property_id)
);


-- ============================================================
-- 3. INSERT DATA
-- ============================================================

INSERT INTO Properties VALUES
(1,  'Green Villa',           'Chennai',   'Apartment', 15000),
(2,  'Sky Residency',         'Bangalore', 'Flat',      20000),
(3,  'Lake View',             'Hyderabad', 'Villa',     30000),
(4,  'Urban Nest',            'Chennai',   'Apartment', 18000),
(5,  'Elite Homes',           'Mumbai',    'Flat',      35000),
(6,  'Sunshine Apartments',   'Delhi',     'Apartment', 22000),
(7,  'Royal Palace',          'Mumbai',    'Villa',     50000),
(8,  'City Heights',          'Bangalore', 'Flat',      25000),
(9,  'Green Meadows',         'Chennai',   'Villa',     40000),
(10, 'Ocean View',            'Goa',       'Apartment', 30000),
(11, 'Hill Residency',        'Ooty',      'Villa',     28000),
(12, 'Metro Homes',           'Hyderabad', 'Flat',      27000),
(13, 'Silver Nest',           'Pune',      'Apartment', 21000),
(14, 'Golden Tower',          'Delhi',     'Flat',      32000),
(15, 'Lake Residency',        'Kolkata',   'Apartment', 26000);

INSERT INTO Tenants VALUES
(1,  'Arun Kumar', '9876543210', 'arun@gmail.com',   '2023-01-01'),
(2,  'Vijay',      '9876543211', 'vijay@gmail.com',  '2023-02-01'),
(3,  'Priya',      '9876543212', 'priya@gmail.com',  '2023-03-01'),
(4,  'Rahul',      '9876543213', 'rahul@gmail.com',  '2023-04-01'),
(5,  'Karthik',    '9876543214', 'karthik@gmail.com','2023-05-01'),
(6,  'Sneha',      '9876543215', 'sneha@gmail.com',  '2023-06-01'),
(7,  'Ravi',       '9876543216', 'ravi@gmail.com',   '2023-07-01'),
(8,  'Divya',      '9876543217', 'divya@gmail.com',  '2023-08-01'),
(9,  'Ajay',       '9876543218', 'ajay@gmail.com',   '2023-09-01'),
(10, 'Meena',      '9876543219', 'meena@gmail.com',  '2023-10-01'),
(11, 'Suresh',     '9876543220', 'suresh@gmail.com', '2023-11-01'),
(12, 'Anjali',     '9876543221', 'anjali@gmail.com', '2023-12-01'),
(13, 'Deepak',     '9876543222', 'deepak@gmail.com', '2024-01-01'),
(14, 'Harish',     '9876543223', 'harish@gmail.com', '2024-02-01'),
(15, 'Nisha',      '9876543224', 'nisha@gmail.com',  '2024-03-01');

INSERT INTO Lease_Agreements VALUES
(101, 1,  1,  '2023-01-01', '2024-01-01', 15000, 'Active'),
(102, 2,  2,  '2023-02-01', '2024-02-01', 20000, 'Active'),
(103, 3,  3,  '2023-03-01', '2024-03-01', 30000, 'Expired'),
(104, 4,  4,  '2023-04-01', '2024-04-01', 18000, 'Active'),
(105, 5,  5,  '2023-05-01', '2024-05-01', 22000, 'Active'),
(106, 6,  6,  '2023-06-01', '2024-06-01', 25000, 'Active'),
(107, 7,  7,  '2023-07-01', '2024-07-01', 27000, 'Active'),
(108, 8,  8,  '2023-08-01', '2024-08-01', 21000, 'Expired'),
(109, 9,  9,  '2023-09-01', '2024-09-01', 30000, 'Active'),
(110, 10, 10, '2023-10-01', '2024-10-01', 28000, 'Active'),
(111, 11, 11, '2023-11-01', '2024-11-01', 32000, 'Active'),
(112, 12, 12, '2023-12-01', '2024-12-01', 26000, 'Active'),
(113, 13, 13, '2024-01-01', '2025-01-01', 40000, 'Active'),
(114, 14, 14, '2024-02-01', '2025-02-01', 35000, 'Active'),
(115, 15, 15, '2024-03-01', '2025-03-01', 30000, 'Active');

INSERT INTO Lease_Payments VALUES
(1,  101, '2023-01-05', 15000, 'UPI'),
(2,  101, '2023-02-05', 15000, 'UPI'),
(3,  102, '2023-02-10', 20000, 'Card'),
(4,  103, '2023-03-10', 30000, 'Cash'),
(5,  104, '2023-04-10', 18000, 'UPI'),
(6,  105, '2023-05-05', 22000, 'UPI'),
(7,  106, '2023-06-06', 25000, 'Card'),
(8,  107, '2023-07-07', 27000, 'Cash'),
(9,  108, '2023-08-08', 21000, 'UPI'),
(10, 109, '2023-09-09', 30000, 'Card'),
(11, 110, '2023-10-10', 28000, 'UPI'),
(12, 111, '2023-11-11', 32000, 'Cash'),
(13, 112, '2023-12-12', 26000, 'UPI'),
(14, 113, '2024-01-05', 40000, 'Card'),
(15, 114, '2024-02-06', 35000, 'UPI'),
(16, 115, '2024-03-07', 30000, 'Cash');

INSERT INTO Maintenance VALUES
(1,  1,  'Plumbing Issue',     2000, 'Resolved'),
(2,  2,  'Electrical Issue',   1500, 'Pending'),
(3,  3,  'Painting',           5000, 'Completed'),
(4,  4,  'Water Leakage',      2500, 'Pending'),
(5,  5,  'AC Repair',          3000, 'Completed'),
(6,  6,  'Painting',           4500, 'Pending'),
(7,  7,  'Lift Repair',        6000, 'Resolved'),
(8,  8,  'Water Leakage',      2000, 'Pending'),
(9,  9,  'Plumbing',           2500, 'Completed'),
(10, 10, 'Electrical',         1800, 'Pending'),
(11, 11, 'Roof Repair',        7000, 'Completed'),
(12, 12, 'Cleaning',           1000, 'Resolved'),
(13, 13, 'Security Upgrade',   5000, 'Pending'),
(14, 14, 'Garden Maintenance', 1500, 'Completed'),
(15, 15, 'Window Repair',      2200, 'Resolved');


-- ============================================================
-- 4. BASIC ANALYSIS QUERIES
-- ============================================================

-- Total Revenue from Rent
SELECT SUM(amount) AS total_revenue
FROM Lease_Payments;

-- Top Paying Tenants
SELECT t.tenant_name,
       SUM(p.amount) AS total_paid
FROM Tenants t
JOIN Lease_Agreements l ON t.tenant_id = l.tenant_id
JOIN Lease_Payments p   ON l.lease_id  = p.lease_id
GROUP BY t.tenant_name
ORDER BY total_paid DESC;

-- Monthly Revenue Trend
SELECT MONTH(payment_date) AS month,
       SUM(amount) AS revenue
FROM Lease_Payments
GROUP BY MONTH(payment_date)
ORDER BY month;

-- Property-wise Revenue
SELECT pr.property_name,
       SUM(p.amount) AS revenue
FROM Properties pr
JOIN Lease_Agreements l ON pr.property_id = l.property_id
JOIN Lease_Payments p   ON l.lease_id     = p.lease_id
GROUP BY pr.property_name;

-- Late Payment Detection
SELECT lease_id,
       payment_date,
       CASE
           WHEN DAY(payment_date) > 5 THEN 'Late Payment'
           ELSE 'On Time'
       END AS payment_status
FROM Lease_Payments;

-- Vacancy Analysis
SELECT property_id,
       COUNT(*) AS active_leases
FROM Lease_Agreements
WHERE status = 'Active'
GROUP BY property_id;


-- ============================================================
-- 5. ADVANCED DATA SCIENCE QUERIES
-- ============================================================

-- Tenant Lifetime Value (CLV)
SELECT tenant_id,
       SUM(amount) AS lifetime_value
FROM Lease_Agreements l
JOIN Lease_Payments p ON l.lease_id = p.lease_id
GROUP BY tenant_id
ORDER BY lifetime_value DESC;

-- Lease Expiry Prediction
SELECT lease_id,
       end_date,
       DATEDIFF(end_date, CURDATE()) AS days_remaining
FROM Lease_Agreements;

-- Maintenance Cost Analysis
SELECT property_id,
       SUM(cost) AS total_maintenance_cost
FROM Maintenance
GROUP BY property_id;


-- ============================================================
-- 6. WINDOW FUNCTIONS
-- ============================================================

-- Running Revenue
SELECT payment_date,
       SUM(amount) OVER (ORDER BY payment_date) AS running_total
FROM Lease_Payments;

-- Rank Tenants by Payment
SELECT tenant_id,
       SUM(amount) AS total,
       RANK() OVER (ORDER BY SUM(amount) DESC) AS rank
FROM Lease_Agreements l
JOIN Lease_Payments p ON l.lease_id = p.lease_id
GROUP BY tenant_id;

-- Row Number
SELECT tenant_id,
       ROW_NUMBER() OVER (ORDER BY tenant_id) AS row_num
FROM Tenants;

-- Rank & Dense Rank
SELECT tenant_id,
       SUM(amount) AS total,
       RANK()       OVER (ORDER BY SUM(amount) DESC) AS rnk,
       DENSE_RANK() OVER (ORDER BY SUM(amount) DESC) AS d_rnk
FROM Lease_Agreements l
JOIN Lease_Payments p ON l.lease_id = p.lease_id
GROUP BY tenant_id;

-- Lag Function
SELECT lease_id,
       payment_date,
       LAG(payment_date) OVER (PARTITION BY lease_id ORDER BY payment_date) AS prev_payment
FROM Lease_Payments;


-- ============================================================
-- 7. DATA CLEANING
-- ============================================================

-- Remove null emails
DELETE FROM Tenants WHERE email IS NULL;

-- Standardize city names
UPDATE Properties SET city = UPPER(city);


-- ============================================================
-- 8. FEATURE ENGINEERING (ML READY)
-- ============================================================

SELECT t.tenant_id,
       COUNT(l.lease_id)  AS total_leases,
       SUM(p.amount)      AS total_paid,
       AVG(p.amount)      AS avg_payment
FROM Tenants t
JOIN Lease_Agreements l ON t.tenant_id = l.tenant_id
JOIN Lease_Payments p   ON l.lease_id  = p.lease_id
GROUP BY t.tenant_id;


-- ============================================================
-- 9. STORED PROCEDURE
-- ============================================================

DELIMITER //
CREATE PROCEDURE TopProperties()
BEGIN
    SELECT property_id,
           SUM(amount) AS revenue
    FROM Lease_Agreements l
    JOIN Lease_Payments p ON l.lease_id = p.lease_id
    GROUP BY property_id
    ORDER BY revenue DESC
    LIMIT 3;
END //
DELIMITER ;

CALL TopProperties();


-- ============================================================
-- 10. TRIGGER (REAL-TIME AUDIT LOG)
-- ============================================================

CREATE TABLE Audit_Log (
    log_id     INT AUTO_INCREMENT PRIMARY KEY,
    message    VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER payment_insert
AFTER INSERT ON Lease_Payments
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Log(message)
    VALUES ('New Payment Received');
END //
DELIMITER ;


-- ============================================================
-- 11. REVENUE ANALYSIS
-- ============================================================

-- Total revenue per tenant
SELECT t.tenant_id,
       t.tenant_name,
       SUM(p.amount) AS total_revenue
FROM Tenants t
JOIN Lease_Agreements l ON t.tenant_id = l.tenant_id
JOIN Lease_Payments p   ON l.lease_id  = p.lease_id
GROUP BY t.tenant_id, t.tenant_name
ORDER BY total_revenue DESC;

-- Average monthly rent collected
SELECT AVG(monthly_rent) AS avg_rent
FROM Lease_Agreements;

-- Highest rent paid
SELECT MAX(amount) AS highest_payment
FROM Lease_Payments;

-- Lowest rent paid
SELECT MIN(amount) AS lowest_payment
FROM Lease_Payments;

-- Revenue per lease
SELECT lease_id,
       SUM(amount) AS total_revenue
FROM Lease_Payments
GROUP BY lease_id;

-- Revenue using CTE
WITH revenue_cte AS (
    SELECT lease_id,
           SUM(amount) AS total
    FROM Lease_Payments
    GROUP BY lease_id
)
SELECT AVG(total) AS avg_revenue,
       MAX(total) AS max_revenue,
       MIN(total) AS min_revenue
FROM revenue_cte;


-- ============================================================
-- 12. PROPERTY ANALYSIS
-- ============================================================

-- Most profitable property
SELECT pr.property_name,
       SUM(p.amount) AS revenue
FROM Properties pr
JOIN Lease_Agreements l ON pr.property_id = l.property_id
JOIN Lease_Payments p   ON l.lease_id     = p.lease_id
GROUP BY pr.property_name
ORDER BY revenue DESC
LIMIT 1;

-- Least profitable property
SELECT pr.property_name,
       SUM(p.amount) AS revenue
FROM Properties pr
JOIN Lease_Agreements l ON pr.property_id = l.property_id
JOIN Lease_Payments p   ON l.lease_id     = p.lease_id
GROUP BY pr.property_name
ORDER BY revenue ASC
LIMIT 1;

-- Highest rent property
SELECT property_name, rent_amount
FROM Properties
WHERE rent_amount = (SELECT MAX(rent_amount) FROM Properties);

-- Property ranking by rent
SELECT property_name,
       rent_amount,
       DENSE_RANK() OVER (ORDER BY rent_amount DESC) AS rank
FROM Properties;


-- ============================================================
-- 13. TENANT ANALYSIS
-- ============================================================

-- Tenants with multiple leases
SELECT tenant_id,
       COUNT(lease_id) AS lease_count
FROM Lease_Agreements
GROUP BY tenant_id
HAVING COUNT(lease_id) > 1;

-- Tenants with no payments
SELECT t.tenant_id, t.tenant_name
FROM Tenants t
LEFT JOIN Lease_Agreements l ON t.tenant_id = l.tenant_id
LEFT JOIN Lease_Payments p   ON l.lease_id  = p.lease_id
WHERE p.payment_id IS NULL;

-- Most active tenants
SELECT tenant_id,
       COUNT(payment_id) AS payment_count
FROM Lease_Agreements l
JOIN Lease_Payments p ON l.lease_id = p.lease_id
GROUP BY tenant_id
ORDER BY payment_count DESC;


-- ============================================================
-- 14. LOCATION ANALYSIS
-- ============================================================

-- City with highest revenue
SELECT city,
       SUM(p.amount) AS revenue
FROM Properties pr
JOIN Lease_Agreements l ON pr.property_id = l.property_id
JOIN Lease_Payments p   ON l.lease_id     = p.lease_id
GROUP BY city
ORDER BY revenue DESC;

-- City with most properties
SELECT city,
       COUNT(property_id) AS total_properties
FROM Properties
GROUP BY city
ORDER BY total_properties DESC;


-- ============================================================
-- 15. TIME ANALYSIS
-- ============================================================

-- Monthly rent collection
SELECT MONTH(payment_date) AS month,
       SUM(amount) AS revenue
FROM Lease_Payments
GROUP BY MONTH(payment_date)
ORDER BY month;

-- Yearly revenue
SELECT YEAR(payment_date) AS year,
       SUM(amount) AS revenue
FROM Lease_Payments
GROUP BY YEAR(payment_date);

-- Running total revenue
SELECT payment_date,
       SUM(amount) AS daily_revenue,
       SUM(SUM(amount)) OVER (ORDER BY payment_date) AS running_total
FROM Lease_Payments
GROUP BY payment_date;


-- ============================================================
-- 16. MAINTENANCE ANALYSIS
-- ============================================================

-- Total maintenance cost
SELECT SUM(cost) AS total_cost
FROM Maintenance;

-- Most expensive maintenance issue
SELECT issue, cost
FROM Maintenance
ORDER BY cost DESC
LIMIT 1;

-- Pending maintenance requests
SELECT *
FROM Maintenance
WHERE status = 'Pending';


-- ============================================================
-- 17. STRING FUNCTIONS
-- ============================================================

-- Find Gmail users
SELECT tenant_name, email,
       POSITION('gmail' IN email)
FROM Tenants;

-- Extract username from email
SELECT tenant_name,
       SUBSTR(email, 1, POSITION('@' IN email) - 1) AS username
FROM Tenants;

-- Reverse email username
SELECT email,
       REVERSE(SUBSTR(email, 1, POSITION('@' IN email) - 1)) AS reversed_username
FROM Tenants;

-- Replace domain
SELECT email,
       REPLACE(email, 'gmail', 'outlook') AS new_email
FROM Tenants;

-- Replace @ with underscore
SELECT email,
       REPLACE(email, '@', '_') AS formatted_email
FROM Tenants;


-- ============================================================
-- 18. SUBQUERIES
-- ============================================================

-- Find leases above average rent
SELECT *
FROM Lease_Agreements
WHERE monthly_rent > (
    SELECT AVG(monthly_rent)
    FROM Lease_Agreements
);

-- Find property with highest revenue
SELECT property_id
FROM Lease_Agreements l
JOIN Lease_Payments p ON l.lease_id = p.lease_id
GROUP BY property_id
HAVING SUM(amount) = (
    SELECT MAX(total)
    FROM (
        SELECT SUM(amount) AS total
        FROM Lease_Agreements l
        JOIN Lease_Payments p ON l.lease_id = p.lease_id
        GROUP BY property_id
    ) t
);
