# Index Performance Report

## Objective
Improve query performance by adding indexes to high-usage columns in users, bookings, and properties.

## Indexes Implemented
- `users.email`
- `bookings.user_id`
- `bookings.property_id`
- `bookings.booking_date`
- `bookings(user_id, booking_date)`
- `properties.host_id`
- `properties.city`
- `properties(host_id, city, created_at)`

## Example Query 1: User’s recent bookings
```sql
SELECT b.id, b.booking_date, p.title
FROM bookings b
JOIN users u ON u.id = b.user_id
JOIN properties p ON b.property_id = p.id
WHERE u.email = 'test@example.com'
ORDER BY b.booking_date DESC
LIMIT 20;
