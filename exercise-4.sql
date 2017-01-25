SELECT
    Entry.addressBookId,
    AddressBook.name,
    Entry.firstName
FROM Entry
    JOIN AddressBook
    ON Entry.addressBookId = AddressBook.id
    WHERE AddressBook.name = "Pharetra Ut Limited";
    --65 firstName's