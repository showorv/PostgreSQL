select * FROM person2;

ALTER Table person2
       ADD COLUMN email TEXT DEFAULT 'default@gmail.com' NOT NULL;

ALTER Table person2
      drop COLUMN phone ;

ALTER Table person2
     drop COLUMN isactive;

ALTER Table person2
     RENAME COLUMN first_name to user_name;

ALTER Table person2
   ALTER COLUMN user_name type VARCHAR(69);

-- add contstraints in existing column 
ALTER Table person2
  ALTER COLUMN user_name set NULL;  
--   for delete use drop instead of set

-- add unique,pk,fk, constraints for existing column  

ALTER Table person2
 ADD CONSTRAINT unique_phone UNIQUE(phone);

INSERT INTO person2 VALUES(2,'yousuf',20,false,'yousuf@gmail.com')

INSERT INTO person2 VALUES(4,'hell',20,'hell@gmail.com',01782767556)