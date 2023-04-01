SELECT 
    p.ID,
    SUM(w.SALARY * DATEDIFF(FINISH_DATE, START_DATE)) AS PRICE
FROM
    project p
        JOIN
    project_worker pw ON pw.PROJECT_ID = p.ID
        JOIN
    worker w ON w.ID = pw.WORKER_ID
GROUP BY p.ID
ORDER BY PRICE DESC;