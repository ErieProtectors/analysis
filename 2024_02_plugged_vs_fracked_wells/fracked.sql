# Fracked wells since 2012
SELECT 
    TO_CHAR(job_start_date, 'mm') AS "Month",
    TO_CHAR(job_start_date, 'Month') AS "Display Month",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2012) AS "2012",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2013) AS "2013",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2014) AS "2014",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2015) AS "2015",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2016) AS "2016",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2017) AS "2017",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2018) AS "2018",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2019) AS "2019",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2020) AS "2020",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2021) AS "2021",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2022) AS "2022",
    COUNT(*) FILTER ( WHERE DATE_PART('year', job_start_date) = 2023) AS "2023"
FROM
    disclosure
WHERE
    state='Colorado' AND job_start_date >= '2012-01-01'
GROUP BY 1,2
ORDER BY 1;

