
    
--RESOURCE: http://stackoverflow.com/questions/2628138/how-to-select-domain-name-from-email-address
select 
(SUBSTR(content, INSTR(content, '@') + 1, LENGTH(content) - (INSTR(content, '@') + 1) - LENGTH(SUBSTRING_INDEX(content,'.',-1)))) AS domain_name
FROM ElectronicMail; 
--this one shows your domain name from everything after the @ symbol to everything before the last .
--so a bob@ridiculous.co.uk will evaluate to ridiculous.co


--ANSWER----------------
select 
(SUBSTR(content, INSTR(content, '@') + 1)) AS domain_name,
COUNT(*) AS occurences
FROM ElectronicMail
    GROUP BY domain_name
    ORDER BY occurences DESC;
    
