-- 1) INNER JOIN: bookings with users
SELECT
    b.id AS booking_id,
    b.booking_date,
    u.id AS user_id,
    u.name AS user_name,    u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- 2) LEFT JOIN: properties with reviews (including properties with no reviews)
SELECT
    p.id AS property_id,
    p.name AS property_name,
    r.id AS review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- 3) FULL OUTER JOIN (MySQL equivalent using UNION)

