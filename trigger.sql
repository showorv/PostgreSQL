-- a trigger is a database mechanism that automatically executes a function in response to an event on a table or view
CREATE TABLE users(
    u_id SERIAL PRIMARY KEY,
    user_name varchar(30)
    
)

insert INTO users(user_name) VALUES('showrov'),('yousuf')

SELECT * from users

CREATE Table deleted_user_audit(
    deleted_user_name VARCHAR(30),
    deletedAt TIMESTAMP
)

SELECT * from deleted_user_audit

-- create trigger function

CREATE or REPLACE Function deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS

$$
     BEGIN

        INSERT INTO deleted_user_audit VALUES(OLD.user_name, now());
        RAISE NOTICE 'delete user add in another table';
        RETURN OLD;
     END
$$




-- create trigger

CREATE OR REPLACE Trigger save_deleted_user
BEFORE DELETE
on users
for EACH row
EXECUTE FUNCTION deleted_user();

DELETE FROM users WHERE u_id = 2;