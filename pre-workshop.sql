--PRE-WORKSHOP USING WORKSHOP2
--------------EXERCISE 1-----------------
--1.1) Which Account owns the most Address Books?
SELECT
    Account.id,
    Account.email,
COUNT(*) AS `Number of Address Books`
FROM AddressBook
    JOIN Account ON AddressBook.accountId = Account.id
    GROUP BY AddressBook.accountId; --this outputs table of 3 columns: Account ID, Account email, and # of Address Books per email
    
SELECT
    Account.id,
    Account.email,
COUNT(*) AS `Number of Address Books`
FROM AddressBook
    JOIN Account ON AddressBook.accountId = Account.id
    GROUP BY AddressBook.accountId
    ORDER BY `Number of Address Books` DESC; 
--ANSWER: Accounts with id's 14 and 5 own the most Address Books with 19 each.
    

    
    
--1.2) Which Address Book contains the most Entries?
SELECT
    AddressBook.id,
    AddressBook.name,
COUNT(*) AS `Number of Entries`
FROM Entry
    JOIN AddressBook
    ON Entry.addressBookId = AddressBook.id
    GROUP BY Entry.addressBookId 
    ORDER BY `Number of Entries` DESC;
--ANSWER: Address Book with id = 37 has most entries at 52.


--------------EXERCISE 2-----------------
--2.1) How many Address Book Entries have phones starting with area code 3XX?
SELECT COUNT(*) FROM Entry WHERE contentLineOne LIKE "(3%"; --outputs 39

--check
SELECT addressBookId, contentLineOne  FROM Entry WHERE contentLineOne LIKE "(3%";

--2.2) How many Address Book Entries have home phones not containing the digit 5?
SELECT COUNT(*) FROM Entry WHERE subtype = 'phone' and contentLineOne NOT LIKE "%5%"; --outputs 212

--check
SELECT addressBookId, contentLineOne FROM Entry WHERE subtype = 'phone' AND contentLineOne NOT LIKE "%5%"; --outputs 212

--2.3) How many Address Book Entries are work phones starting with a country code?
SELECT COUNT(*) FROM Entry WHERE type = 'work' AND subtype = 'phone' AND contentLineOne LIKE "1%";
--outputs 60

--check
SELECT 
    addressBookId,
    type,
    subtype,
    contentLineOne
FROM Entry 
WHERE type = 'work' AND subtype = 'phone' AND contentLineOne LIKE "1%"; --outputs 60