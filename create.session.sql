-- CREATE TABLE customer
-- (
--     customer_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     phone numeric(10),
--     email VARCHAR(100)
-- );

-- CREATE TABLE salesperson
-- (
--     salesperson_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50)
-- );

-- CREATE TABLE mechanic
-- (
--     mechanic_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50)
-- );

-- CREATE TABLE car
-- (
--     car_id SERIAL PRIMARY KEY,
--     salesperson_id INTEGER,
--     customer_id INTEGER,
    -- year NUMERIC(4),
    -- make VARCHAR(20),
    -- model VARCHAR(20),
    -- price NUMERIC(10,2),
    -- sale_date DATE DEFAULT CURRENT_DATE,
--     FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE,
--     FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
-- );

-- CREATE TABLE service_history
-- (
--     service_history_id SERIAL PRIMARY KEY,
--     service_id INTEGER,
--     car_id INTEGER,
--     customer_id INTEGER,
--     FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE
-- );

-- CREATE TABLE car_mechanic
-- (
--     car_mechanic_id SERIAL PRIMARY KEY,
--     car_id INTEGER,
--     mechanic_id INTEGER,
--     service_date DATE DEFAULT CURRENT_DATE,
--     FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE,
--     FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id) ON DELETE CASCADE
-- );

-- CREATE TABLE "service"
-- (
--     service_id SERIAL PRIMARY KEY,
--     car_id INTEGER,
--     mechanic_id INTEGER,
--     service_description VARCHAR(200),
--     service_history_id INTEGER,
--     amount NUMERIC(8,2),
--     service_date DATE DEFAULT CURRENT_DATE,
--     FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE,
--     FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id) ON DELETE CASCADE,
--     FOREIGN KEY (service_history_id) REFERENCES service_history(service_history_id) ON DELETE CASCADE
-- );

-- DROP TABLE service_history, car_mechanic, "service", car, customer, mechanic, salesperson;



