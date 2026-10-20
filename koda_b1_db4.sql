-- select current_database()
-- create DATABASE koda_b1_db4

CREATE Table role (
    id INTEGER generated ALWAYS as IDENTITY PRIMARY KEY,
    role_name VARCHAR(50) UNIQUE
);

CREATE Table users (
    id INTEGER generated ALWAYS as IDENTITY PRIMARY KEY,
    username VARCHAR(40) not NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) not null,
    role_id INTEGER REFERENCES role(id),
    contact VARCHAR(20)
)

-- employee
create Table employee(
    id INTEGER generated ALWAYS as IDENTITY PRIMARY KEY,
    NIP VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) not null,
    first_name VARCHAR(40) not NULL,
    last_name VARCHAR(40) not NULL,
    gelar VARCHAR(6),
    role_id INTEGER REFERENCES role(id)
)

INSERT into role(role_name) VALUES
('Admin'),
('Staff'),
('User'),
('Teknisi')


-- register user
INSERT into users(username, email, password, role_id, contact) VALUES
('Asta', 'asta@gmail.com', 'asta12345', 1, '081233445566'),
('Yami', 'yami@gmail.com', 'yami12345', 4, '081344332211')

-- login
select u.email, u.password, r.role_name from users u 
join role r on r.id = u.role_id

-- register employee
insert into employee(NIP, password, first_name, last_name, gelar, role_id ) VALUES
('1122667788990', 'noelle12345', 'Noelle', 'Putri', 'S.T', 1)

-- login employee
select e.NIP, e.password, r.role_name from employee e 
join role r on r.id = e.role_id