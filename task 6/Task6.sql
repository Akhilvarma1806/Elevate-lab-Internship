select * from task6;

SELECT
    TO_CHAR(TO_DATE(ORDERDATE, 'MM/DD/YYYY HH24:MI'), 'YYYY') AS order_year,
    TO_CHAR(TO_DATE(ORDERDATE, 'MM/DD/YYYY HH24:MI'), 'MM') AS order_month_num,
    TO_CHAR(TO_DATE(ORDERDATE, 'MM/DD/YYYY HH24:MI'), 'MON') AS order_month_name,
    SUM(TO_NUMBER(SALES)) AS monthly_revenue,
    COUNT(DISTINCT ORDERNUMBER) AS order_volume
FROM TASK6
GROUP BY
    TO_CHAR(TO_DATE(ORDERDATE, 'MM/DD/YYYY HH24:MI'), 'YYYY'),
    TO_CHAR(TO_DATE(ORDERDATE, 'MM/DD/YYYY HH24:MI'), 'MM'),
    TO_CHAR(TO_DATE(ORDERDATE, 'MM/DD/YYYY HH24:MI'), 'MON')
ORDER BY
    order_year ASC,
    order_month_num ASC;
    
    
    


    

