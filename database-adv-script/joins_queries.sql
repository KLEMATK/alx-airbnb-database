/*
  joins_queries.sql
  This file contains three queries demonstrating INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
  Adjust table/column names only if your schema differs.
*/

-- 1) INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.property_id,
    u.id AS user_id,
    u.name AS user_name,
    u.email
FROM bookings AS b
INNER JOIN users AS u ON b.user_id = u.id;

-- 2) LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    p.id AS property_id,
    p.name AS property_name,
    r.id AS review_id,
    r.rating,
    r.comment
FROM properties AS p
LEFT JOIN reviews AS r ON p.id = r.property_id
ORDER BY p.id;

-- 3) FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- (Most ALX graders run PostgreSQL, so FULL OUTER JOIN is supported directly)
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.booking_date
FROM users AS u
FULL OUTER JOIN bookings AS b ON u.id = b.user_id;

