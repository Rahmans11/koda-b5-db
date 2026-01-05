-- get profile
SELECT first_name, last_name, email, phone_number, profile_photo
FROM users 
WHERE email = 'John@gmail.com' -- assume we login with user that have this email