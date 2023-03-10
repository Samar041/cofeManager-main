CREATE TABLE users(
    id int primary KEY auto_increment,
    name varchar(250),
    contactNumber VARCHAR(20),
    email VARCHAR(50),
    PASSWORD VARCHAR(50),
    STATUS VARCHAR(20),
    role VARCHAR(20),
    UNIQUE(email)
);

insert INTO users(name,contactNumber,email,PASSWORD,STATUS,role) VALUES('admin','000000','admin@gmail.com','admin','true','admin');


CREATE TABLE category(
    id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
)

CREATE TABLE products(
    id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    category_id INTEGER NOT NULL,
    description VARCHAR(255),
    price INTEGER,
    status VARCHAR(20),
    PRIMARY KEY(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
)

CREATE TABLE bille(
    id int NOT NULL AUTO_INCREMENT,
    uuid VARCHAR(200) NOT NULL,
    name VARCHAR(255) NOt NULL,
    contactNumber VARCHAR(20) NOT NULL,
    paymentMethod VARCHAR(50) NOT NULL,
    total int NOT NULL,
    productDetails JSON DEFAULT NULL,
    createdBy VARCHAR(255) NOT NULL,
    primary KEY(id)

)

