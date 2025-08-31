-- USERS
CREATE UNIQUE INDEX IF NOT EXISTS idx_users_email_unique ON users(email);

-- BOOKINGS
CREATE INDEX IF NOT EXISTS idx_bookings_user_id     ON bookings(user_id);
CREATE INDEX IF NOT EXISTS idx_bookings_property_id ON bookings(property_id);
CREATE INDEX IF NOT EXISTS idx_bookings_booking_date ON bookings(booking_date);
CREATE INDEX IF NOT EXISTS idx_bookings_userid_date_desc
ON bookings(user_id, booking_date DESC);

-- PROPERTIES
CREATE INDEX IF NOT EXISTS idx_properties_host_id ON properties(host_id);
CREATE INDEX IF NOT EXISTS idx_properties_city ON properties(city);
CREATE INDEX IF NOT EXISTS idx_properties_host_city_created
ON properties(host_id, city, created_at DESC);
