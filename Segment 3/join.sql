-- JOIN on Employees and Mental_Health tables

SELECT emp."ID", emp."COUNTRY_WORKING_IN", men."MENTAL_HEALTH_COVERAGE", men."TECH_COMPANY"
FROM "MENTAL_HEALTH" AS men
JOIN "EMPLOYEES" AS emp ON
emp."ID"=men."ID";


