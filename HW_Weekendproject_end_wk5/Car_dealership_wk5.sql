CREATE TABLE dealership(
	store_id SERIAL PRIMARY KEY,
	address VARCHAR (100),
	phone_number VARCHAR(12)
);

CREATE TABLE Customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(150),
	service_id INTEGER,
	VIN_id INTEGER NOT NULL,
	FOREIGN KEY(VIN_id) REFERENCES Cars(VIN_id)
);

CREATE TABLE Service_and_repair(
	service_id SERIAL PRIMARY KEY,
	staff_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	repair_amount VARCHAR(10),
	VIN_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
	FOREIGN KEY(VIN_id) REFERENCES Cars(VIN_id)
);

CREATE TABLE Cars(
	VIN_id SERIAL PRIMARY KEY,
	Make VARCHAR(30),
	Model VARCHAR(10),
	Year_ INTEGER,
	Color TEXT,
	service_id INTEGER
);	

CREATE TABLE Cars_sold(
	new_VIN_id SERIAL PRIMARY KEY,
	new_car_id SERIAL,
	used_car_id INTEGER,
	amount INTEGER,
	service_history INTEGER NOT NULL,
	FOREIGN KEY(service_history) REFERENCES Service_and_repair(service_id)
);

CREATE TABLE Staff(
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	address VARCHAR(100)
);

CREATE TABLE Billing(
	billing_id SERIAL PRIMARY KEY,
	invoice_id SERIAL,
	amount NUMERIC(8,2),
	customer_id INTEGER NOT NULL,
	service_id INTEGER NOT NULL,
	staff_id INTEGER NOT NULL,
	new_VIN_id INTEGER NOT NULL,
	VIN_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
	FOREIGN KEY(service_id) REFERENCES Service_and_repair(service_id),
	FOREIGN KEY(staff_id) REFERENCES Staff(staff_id),
	FOREIGN KEY(new_VIN_id) REFERENCES Cars_sold(new_VIN_id),
	FOREIGN KEY(VIN_id) REFERENCES Cars(VIN_id));