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

-- A: 연령대별 고객 수 분석
SELECT 
    CASE 
        WHEN age < 20 THEN '10대 이하'
        WHEN age < 30 THEN '20대'
        WHEN age < 40 THEN '30대'
        ELSE '40대 이상'
    END AS age_group,
    COUNT(*) AS customer_count
FROM customers
GROUP BY age_group;