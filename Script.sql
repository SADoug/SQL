SELECT users.name as name, cities.name as city
FROM cities
JOIN users ON users."cityId" =cities.id


SELECT writer.name as writer, recipient.name as recipient, testimonials.message as message
FROM testimonials
JOIN users AS writer ON testimonials."writerId"= writer.id
JOIN users AS recipient ON testimonials."recipientId"= recipient.id

SELECT u.id AS id, u.name AS name, c.name AS course, s.name AS school, e."endDate" as "endDate"
FROM educations e
JOIN users u ON e."userId" = u.id
JOIN courses c ON e."courseId" = c.id
JOIN schools s ON e."schoolId" = s.id
WHERE u.id = 30;

SELECT u.id AS id, u.name AS name, r.name AS role, c.name AS company, e."startDate" AS "startDate"
FROM experiences e
JOIN companies c ON e."companyId" = c.id
JOIN roles r ON e."roleId" = r.id
JOIN users u ON e."userId" = u.id
WHERE u.id = 50
AND e."endDate" IS NULL;