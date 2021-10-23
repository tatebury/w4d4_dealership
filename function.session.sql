-- --> Function Calls <--

-- SELECT add_car(2010, 'Honda', 'Civic', 6.99);

-- SELECT remove_car(3);

-- SELECT service_car(6, 'Trash compactor fee', 60.00);

-- SELECT add_mechanic('John', 'Johnson');

-- SELECT add_salesperson('Ivan', 'Stalingrad');

-- SELECT add_customer('Justin', 'Bieber');

-- SELECT add_history(8, 6);

-- SELECT assign_mechanic(4, 4);

SELECT * FROM car_mechanic;
SELECt * FROM car;
SELECt * FROM "service";
SELECt * FROM customer;
SELECt * FROM mechanic;
SELECt * FROM salesperson;
SELECt * FROM service_history;






-- --> Functions <--
-- -- add a car
-- CREATE OR REPLACE FUNCTION add_car(
--     year NUMERIC(4),
--     make VARCHAR(20),
--     model VARCHAR(20),
--     price NUMERIC(10,2),
--     sale_date DATE DEFAULT CURRENT_DATE
-- )
-- RETURNS void
-- AS $ADD_CAR$
-- BEGIN
-- 	INSERT INTO car(year, make, model, price)
-- 	VALUES(year, make, model, price);
-- END;
-- $ADD_CAR$
-- LANGUAGE plpgsql;


-- -- schedule a service to be done
-- CREATE OR REPLACE FUNCTION service_car(
--     car_id INTEGER,
--     service_description VARCHAR(200),
--     amount NUMERIC(8,2),
--     mechanic_id INTEGER DEFAULT NULL,
--     service_date DATE DEFAULT CURRENT_DATE
-- )
-- RETURNS void
-- AS $SERVICE_CAR$
-- BEGIN
--     INSERT INTO "service" 
--     (car_id, service_description, amount, mechanic_id)
--     VALUES 
--     (car_id, service_description, amount, mechanic_id);
-- END;
-- $SERVICE_CAR$
-- LANGUAGE plpgsql;


-- put a mechanic on a job
-- CREATE OR REPLACE FUNCTION assign_mechanic
-- (
--     mechanic_id INTEGER,
--     car_id INTEGER
-- )
-- RETURNS void
-- AS $$
-- BEGIN
--     INSERT INTO car_mechanic
--     (mechanic_id, car_id)
--     VALUES 
--     (mechanic_id, car_id);
-- END;
-- $$
-- LANGUAGE plpgsql;


-- mark a job as done by giving it a service history id
-- CREATE OR REPLACE FUNCTION add_history
-- (
--     service_id INTEGER,
--     car_id INTEGER
-- )
-- RETURNS void
-- AS $$
-- BEGIN
--     INSERT INTO service_history
--     (service_id, car_id)
--     VALUES
--     (service_id, car_id);
-- END;
-- $$
-- LANGUAGE plpgsql;


-- add a new salesperson
-- CREATE OR REPLACE FUNCTION add_salesperson
-- (
--     first_name VARCHAR(50),
--     last_name VARCHAR(50)
-- )
-- RETURNS void
-- AS $$
-- BEGIN
--     INSERT INTO salesperson
--     (first_name, last_name)
--     VALUES
--     (first_name, last_name);
-- END;
-- $$
-- LANGUAGE plpgsql;


-- -- add a new mechanic
-- CREATE OR REPLACE FUNCTION add_mechanic
-- (
--     first_name VARCHAR(50),
--     last_name VARCHAR(50)
-- )
-- RETURNS void
-- AS $$
-- BEGIN
--     INSERT INTO mechanic
--     (first_name, last_name)
--     VALUES
--     (first_name, last_name);
-- END;
-- $$
-- LANGUAGE plpgsql;


-- -- add a new customer
-- CREATE OR REPLACE FUNCTION add_customer
-- (
--     first_name VARCHAR(50),
--     last_name VARCHAR(50)
-- )
-- RETURNS void
-- AS $$
-- BEGIN
--     INSERT INTO customer
--     (first_name, last_name)
--     VALUES
--     (first_name, last_name);   
-- END;
-- $$
-- LANGUAGE plpgsql;



-- -- remove a car
-- CREATE OR REPLACE FUNCTION remove_car(
--     id_to_remove INTEGER
-- )
-- RETURNS void
-- AS $REMOVE_CAR$
-- BEGIN
-- 	DELETE FROM car WHERE car.car_id = id_to_remove;
-- END;
-- $REMOVE_CAR$
-- LANGUAGE plpgsql;

