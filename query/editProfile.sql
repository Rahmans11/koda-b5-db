-- Edit Profile
UPDATE users
SET 
first_name = 'newJohn', 
last_name = 'newWick', 
email = 'newJohn@gmail.com', 
phone_number = 'new +123456789', 
profile_photo = 'new profile photo'
WHERE email = 'John@gmail.com' -- assume we login with user that have this email