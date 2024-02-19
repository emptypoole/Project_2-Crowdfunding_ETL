CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE Categories (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(50)
);

CREATE TABLE Subcategories (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(50)
);

CREATE TABLE Campaigns (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(100),
    description VARCHAR(255),
    goal DECIMAL(10,2),
    pledged DECIMAL(10,2),
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(10),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(50),
    subcategory_id VARCHAR(50),
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategories(subcategory_id)
);

SELECT *
FROM Contacts;

SELECT *
FROM Categories;

SELECT *
FROM Subategories;

SELECT *
FROM Campaigns;