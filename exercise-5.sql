SELECT
    AddressBook.id,
    AddressBook.name,
    Entry.firstName,
    Entry.lastName,
    ElectronicMail.content
FROM AddressBook
    JOIN Entry ON AddressBook.id = Entry.addressBookId
    JOIN ElectronicMail ON Entry.id = ElectronicMail.entryId
    WHERE AddressBook.id = 100;
--shows 14 emails to AddressBook.id = 100
