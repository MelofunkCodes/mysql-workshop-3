--List how many phones were landlines, cellular and fax for entries with birthdates between October 1950 and October 1960
SELECT
    Phone.entryId,
    Entry.birthday,
    Phone.subtype
FROM Entry
    JOIN Phone ON Entry.id = Phone.entryId
    WHERE birthday BETWEEN "1950-10-01" AND "1960-10-31";
--outputs 446 phones. Shows all the birthdays between October 1950 and October 1960

SELECT
    Phone.subtype,
COUNT(*) as occurences
FROM Entry
    JOIN Phone ON Entry.id = Phone.entryId
    WHERE birthday BETWEEN "1950-10-01" AND "1960-10-31"
    GROUP BY Phone.subtype;
--shows how many numbers between October 1950 and October 1960 birthdates were landline (172), cellular (139), and fax (135).
--weird how there are cellular phones in the 1950s though...