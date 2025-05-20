create table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(20) not NULL
)

create table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

INSERT into "user"(username) VALUES
('akash'),('batash'),('sagor'),('nodi')


INSERT INTO post(title,user_id) VALUES 
('hello',2),
('hi',2),
('bye',3),
('sry',1)

SELECT * from post


-- insertion behavior ->> 1/ can't insert without valid user_id

-- deletion behavior ->> 
-- 1/ on delete cascade ->> user_id INTEGER REFERENCES "user"(id) on delete cascade
-- 2/ on delete restrict (default)->> 
-- 3/ on delete set NULL ->> user_id INTEGER REFERENCES "user"(id) on delete set null
-- 4/on delete set DEFAULT ->> user_id INTEGER REFERENCES "user"(id) on delete set default default 2

-- on update cascade


--inner join ->> return matching rows from both table
-- retrive title and username

select tnd right joinitle,username from post p
INNER join "user" u on p.user_id = u.id

-- left join ->> All rows from the left, matched rows from right

select * from post p
left join "user" u on p.user_id = u.id

-- right join->> All rows from the right, matched rows from left

select * from post p
right join "user" u on p.user_id = u.id


-- full join ->> All rows from both, matched where possible

select * from post p
full join "user" u on p.user_id = u.id

-- cross join ->> all combinations 

select * from post 
cross join "user" 

select * from "user"
cross join post 

-- natural join ->> Joins two different tables automatically using columns with the same names and data types

select * from post 
natural join "user" 

-- self join ->> Manually joins a table with itself to compare or relate rows within the same table.
