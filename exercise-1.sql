CREATE TABLE Account 
    (id INT auto_increment primary key,
    email VARCHAR(255),
    password VARCHAR(40),
    createdOn DATETIME,
    modifiedOn DATETIME);
    
CREATE TABLE AddressBook
    (id INT auto_increment primary key,
    accountId INT,
    name VARCHAR(255),
    createdOn DATETIME,
    modifiedOn DATETIME);
    
CREATE TABLE Entry
    (id INT auto_increment primary key,
    addressBookId INT,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    birthday DATETIME,
    type ENUM('phone', 'address', 'electronic-mail'));
    
CREATE TABLE Phone
    (id INT auto_increment primary key,
    entryId INT,
    type ENUM('home', 'work', 'other'),
    subtype ENUM('landline', 'cellular', 'fax'),
    content VARCHAR(255));
    
CREATE TABLE Address
    (id INT auto_increment primary key,
    entryId INT,
    type ENUM('home', 'work', 'other'),
    addressLine1 VARCHAR(255),
    addressLine2 VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(128),
    country VARCHAR(128),
    postalCode VARCHAR(10));
    
CREATE TABLE ElectronicMail
    (id INT auto_increment primary key,
    entryId INT,
    type ENUM('home', 'work', 'other'),
    content VARCHAR(255));