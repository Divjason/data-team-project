CREATE DATABASE marketing_project;

USE marketing_project;

-- PM 기본 테이블 생성
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    created_at DATETIME
);

-- PM 기본 조회 쿼리
SELECT *
FROM customers;