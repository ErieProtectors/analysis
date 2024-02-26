# Plugged wells since 1999
SELECT 
    TO_CHAR(status_date, 'mm') AS "Month",
    TO_CHAR(status_date, 'Month') AS "Display Month",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 1999) AS "1999",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2000) AS "2000",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2001) AS "2001",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2002) AS "2002",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2003) AS "2003",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2004) AS "2004",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2005) AS "2005",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2006) AS "2006",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2007) AS "2007",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2008) AS "2008",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2009) AS "2009",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2010) AS "2010",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2011) AS "2011",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2012) AS "2012",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2013) AS "2013",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2014) AS "2014",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2015) AS "2015",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2016) AS "2016",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2017) AS "2017",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2018) AS "2018",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2019) AS "2019",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2020) AS "2020",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2021) AS "2021",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2022) AS "2022",
    COUNT(*) FILTER ( WHERE DATE_PART('year', status_date) = 2023) AS "2023"
FROM
    well_status
WHERE
    status='PA'
    AND status_date >= '1999-01-01'
GROUP BY 1,2
ORDER BY 1;
