USE bookish;

CREATE TABLE members (
	id integer AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
	middle_name VARCHAR (30),
    surname VARCHAR (30),
    birth_date DATE,
	gender VARCHAR (3),
    address_line1 VARCHAR (50),
    address_line2 VARCHAR (50),
	city VARCHAR (50),
    post_code VARCHAR (8)
);

CREATE TABLE books (
	id integer AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (500),
    author VARCHAR (500),
    isbn VARCHAR (20),
    genre VARCHAR (30),
    age_rating INTEGER,
    number_of_copies INTEGER
);

CREATE TABLE check_in_out_history (
	id integer AUTO_INCREMENT PRIMARY KEY,
    member_id INTEGER,
    book_id INTEGER,
    check_out_date DATE,
    days_until_due_back INTEGER,
    returned BOOLEAN,
    return_condition VARCHAR (100),
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (member_id) REFERENCES members(id)
);
