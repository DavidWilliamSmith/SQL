CREATE TABLE store_sales
(
    sale_date date NOT NULL,
    day_of_year integer NOT NULL,
    employee_shifts integer,
    units_sold integer,
    revenue integer,
    month_of_year integer
);


insert into store_sales values ('2017-01-01',1,3,241,2892,1);
insert into store_sales values ('2017-01-02',2,3,205,2460,1);
insert into store_sales values ('2017-01-03',3,3,200,2400,1);
insert into store_sales values ('2017-01-04',4,3,458,5496,1);
insert into store_sales values ('2017-01-05',5,3,339,4068,1);
insert into store_sales values ('2017-01-06',6,3,427,5124,1);
insert into store_sales values ('2017-01-07',7,3,168,2016,1);
insert into store_sales values ('2017-01-08',8,3,223,2676,1);
insert into store_sales values ('2017-01-09',9,3,267,3204,1);
insert into store_sales values ('2017-01-10',10,3,228,2736,1);
insert into store_sales values ('2017-01-11',11,3,374,4488,1);
insert into store_sales values ('2017-01-12',12,3,189,2268,1);
insert into store_sales values ('2017-01-13',13,3,238,2856,1);
insert into store_sales values ('2017-01-14',14,3,466,5592,1);
insert into store_sales values ('2017-01-15',15,3,133,1596,1);
insert into store_sales values ('2017-01-16',16,3,150,1800,1);
insert into store_sales values ('2017-01-17',17,3,277,3324,1);
insert into store_sales values ('2017-01-18',18,3,144,1728,1);
insert into store_sales values ('2017-01-19',19,3,169,2028,1);
insert into store_sales values ('2017-01-20',20,3,355,4260,1);
insert into store_sales values ('2017-01-21',21,3,339,4068,1);
insert into store_sales values ('2017-01-22',22,3,342,4104,1);
insert into store_sales values ('2017-01-23',23,3,329,3948,1);
insert into store_sales values ('2017-01-24',24,3,276,3312,1);
insert into store_sales values ('2017-01-25',25,3,238,2856,1);
insert into store_sales values ('2017-01-26',26,3,205,2460,1);
insert into store_sales values ('2017-01-27',27,3,192,2304,1);
insert into store_sales values ('2017-01-28',28,3,225,2700,1);
insert into store_sales values ('2017-01-29',29,3,300,3600,1);
insert into store_sales values ('2017-01-30',30,3,348,4176,1);
insert into store_sales values ('2017-01-31',31,3,428,5136,1);

-- 
SELECT
   *
FROM
   store_sales;

-- 
SELECT
   *
FROM
   store_sales
LIMIT
   10;

SELECT
   count(*)
FROM
   store_sales;


SELECT
   Month_of_year, count(*)
FROM
  store_sales
GROUP BY
   month_of_year;

-- 
SELECT
   MAX(employee_shifts)
FROM
   store_sales;
   
   SELECT 
   *
 FROM 
   store_sales
 LIMIT 
   10;


SELECT
    SUM(units_sold) 
FROM
   store_sales;

SELECT
  month_of_year, sum(units_sold), avg(units_sold), var_pop(units_sold)
FROM
   store_sales
GROUP BY
    month_of_year;


SELECT
  month_of_year, 
  SUM(units_sold), 
  AVG(units_sold), 
  VAR_POP(units_sold), 
   STDDEV_POP(units_sold)
FROM
   store_sales
GROUP BY
    Month_of_year;


/* Round to 2 decimal places */
select
  month_of_year,
  SUM(units_sold),
  ROUND( AVG(units_sold),2), 
  ROUND(VAR_POP(units_sold), 2),
  ROUND(STDDEV_POP(units_sold), 2)
FROM
   store_sales
GROUP BY
    Month_of_year;

SELECT
  month_of_year, SUM(employee_shifts)
FROM
   store_sales
GROUP BY
    month_of_year;


SELECT
  month_of_year, SUM(units_sold), avg(units_sold)
FROM
   store_sales
GROUP BY
  month_of_year