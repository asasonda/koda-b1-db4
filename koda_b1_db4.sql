-- select current_database()
-- create DATABASE koda_b1_db4

-- DROP Table users
-- drop table employee

CREATE Table role (
    id INTEGER generated ALWAYS as IDENTITY PRIMARY KEY,
    role_name VARCHAR(50) UNIQUE
);

CREATE Table users (
    id INTEGER generated ALWAYS as IDENTITY PRIMARY KEY,
    username VARCHAR(40) not NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) not null,
    first_name VARCHAR(40) not NULL,
    last_name VARCHAR(40) not NULL,
    role_id INTEGER REFERENCES role(id),
    employee_id INTEGER REFERENCES employee(id),
    contact VARCHAR(20)
);

employee
create Table employee(
    id INTEGER generated ALWAYS as IDENTITY PRIMARY KEY,
    NIP VARCHAR(50) NOT NULL UNIQUE,
    gelar VARCHAR(6)
);

INSERT into role(role_name) VALUES
('Admin'),
('Staff'),
('User'),
('Teknisi')

insert into employee(NIP, gelar) VALUES
('1122667788990','S.T'),
('3455000088990','S.E')

-- register user dan register employee
INSERT into users(username, email, password, first_name, last_name, role_id, employee_id, contact) VALUES
('asta', 'asta@gmail.com', 'asta12345', 'Asta', 'Putra', 1, 2,'081233445566'),
('yami', 'yami@gmail.com', 'yami12345', 'Yami', 'widodo', 4, NULL,'081344332211'),
('noelle', 'noelle@gmail.com', 'noelle12345', 'Noelle', 'Putri', 1, 1,'081344332211')


-- login
select u.email, u.password, r.role_name from users u 
join role r on r.id = u.role_id