--Transform all work emails into home emails and vice versa.
SELECT id, type FROM ElectronicMail; -- 2300 rows

SELECT type,
COUNT(*)
FROM ElectronicMail
GROUP BY type;
-- 920 home, 690 work, 690 other



    
--1) Alter the table and add the new enum value to the column, so that you will have 2 new enums that are duplicates of 'home' and 'work'
ALTER TABLE ElectronicMail
MODIFY COLUMN type ENUM('home', 'work', 'other', 'home2', 'work2');
--2) Set the old enum value to the duplicate new values for all records. This prevents mixing.
UPDATE ElectronicMail SET type  = 'work2' WHERE
type = 'home';

UPDATE ElectronicMail SET type  = 'home2' WHERE
type = 'work';

--3) Repeating step 2, but re-assigning it back to the non-duplicate ENUM values
UPDATE ElectronicMail SET type = 'work' WHERE type = 'work2';

UPDATE ElectronicMail SET type = 'home' WHERE type = 'home2';

--4) Alter the table and drop the duplicate enum values
ALTER TABLE ElectronicMail
MODIFY COLUMN type ENUM('home', 'work', 'other');


--5) Final check
SELECT type,
COUNT(*)
FROM ElectronicMail
GROUP BY type;
-- 690 home, 920 work, 690 other