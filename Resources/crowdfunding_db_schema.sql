-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE categories (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

CREATE TABLE subcategories (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

CREATE TABLE kickstarter_campaigns (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name VARCHAR(255),
    description VARCHAR(255),
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(2),
    currency VARCHAR(3),
    launched_date DATE,
    end_date DATE,
    category_id	VARCHAR(10),
	FOREIGN KEY (category_id) REFERENCES categories(category_id),
    subcategory_id VARCHAR(10),
	FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);

SELECT * FROM categories;

SELECT * FROM contacts;

SELECT * FROM subcategories;

SELECT * FROM kickstarter_campaigns

