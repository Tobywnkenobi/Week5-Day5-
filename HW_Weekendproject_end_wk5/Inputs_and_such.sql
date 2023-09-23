INSERT INTO Cars (
	VIN_id,
	Make,
	Model,
	year_,
	Color,
	service_id
	) VALUES (
	1,
	'Toyota',
	'Highlander',
	'2008',
	'Red',
	1
);

INSERT INTO Customers (
	customer_id,
	first_name,
	last_name,
	address,
	service_id,
	vin_id
	)VALUES(
		1,
		'Jennifer',
		'O''Malley',
		'211 Dogwood Drive, Kents Store, VA',
		1,
		1
);

INSERT INTO staff (
	staff_id,
	first_name,
	last_name,
	address
	) VALUES (
	2,
	'Toby',
	'Markham',
	'239 Dogwood Drive, Kents Store, Va'
);

INSERT INTO dealership (
	store_id,
	address,
	phone_number
	) VALUES (
	55,
	'234 dealership ave, charlottesville, va',
	7572542158
);

INSERT INTO Cars (
	VIN_id,
	Make,
	Model,
	year_,
	Color,
	service_id
	) VALUES (
	2,
	'Ford',
	'F-150',
	'2000',
	'Red',
	2
);

INSERT INTO Customers (
	customer_id,
	first_name,
	last_name,
	address,
	service_id,
	vin_id
	)VALUES(
	2,
	'Jason',
	'Short',
	'148 gretna lane, altavsita, va',
	2,
	2
);

CREATE OR REPLACE PROCEDURE change_car(
	make VARCHAR(30),
	Model VARCHAR(30),
	Year_ INTEGER
	) LANGUAGE plpgsql AS $$
		BEGIN
			UPDATE Customers
			SET 
				make = make AND 
				Model = Model AND 
				Year_ = Year_;
		END
	$$;

CALL Cars 
		