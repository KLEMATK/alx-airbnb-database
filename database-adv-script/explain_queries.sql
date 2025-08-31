-- Example performance testing queries

-- Q1: User’s recent bookings
EXPLAIN ANALYZE
SELECT b.id, b.booking_date, p.title
FROM bookings b
JOIN users u ON u.id = b.user_id
JOIN properties p ON b.property_id = p.id
WHERE u.email = 'test@example.com'
ORDER BY b.booking_date DESC
LIMIT 20;

-- Q2: Host’s properties in a city
EXPLAIN ANALYZE
SELECT p.id, p.title, p.city
FROM properties p
WHERE p.host_id = 42 AND p.city = 'Kigali'
ORDER BY p.created_at DESC
LIMIT 20;

-- Q3: Bookings for a property
EXPLAIN ANALYZE
SELECT b.*
FROM bookings b
WHERE b.property_id = 123
ORDER BY b.booking_date DESC
LIMIT 50;
