-- Login
SELECT email, password 
FROM users 
WHERE email = 'John@gmail.com' -- assume this is data from login form email column
AND password = 'secretpass'; -- and this from password column