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


--inner join
-- retrive title and username

select title,username from post p
INNER join "user" u on p.user_id = u.id

-- left and right join

