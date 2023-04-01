SELECT 
    c.ID, c.NAME, COUNT(p.ID) AS PROJECT_COUNT
FROM
    client c
        JOIN
    project p ON c.ID = p.CLIENT_ID
GROUP BY c.ID , c.NAME
HAVING COUNT(p.ID) = (SELECT 
        COUNT(ID)
    FROM
        project
    GROUP BY CLIENT_ID
    ORDER BY COUNT(ID) DESC
    LIMIT 1)