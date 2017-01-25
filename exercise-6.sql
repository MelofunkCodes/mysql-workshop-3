SELECT firstName, lastName FROM Entry WHERE firstName = "Charlotte" AND lastName = "Jenkins";

SELECT
    Entry.firstName,
    Entry.lastName,
    Phone.type,
    Phone.subtype,
    Phone.content
FROM Entry
    JOIN Phone ON Entry.id = Phone.entryId
    WHERE Entry.firstName = "Charlotte" AND lastName = "Jenkins";
--Charlotte Jenkins only has 2 phone numbers