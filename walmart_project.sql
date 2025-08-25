select * from walmart

 -- 
 select count(*) from walmart;

 select distinct payment_method from walmart ;

 select payment_method, count(*) from walmart
 group by payment_method

 
SELECT 
	COUNT(DISTINCT branch) 
FROM walmart;

SELECT MIN(quantity) FROM walmart;


-- Business Problems

--Q.1 Find different payment method and number of transactions, number of qty sold

select 
	payment_method, 
	count(*) as no_paymrnts,
	sum(quantity) as no_qty_sold
from walmart
group by payment_method


-- Q.2 Identify the highest-rated category in each branch, displaying the branch, category
-- AVG RATING


select *
from
(select 	
	category,
	branch,
	avg(rating) as avg_ranting,
	rank() over(partition by branch order by avg(rating) desc )as rank
from walmart
group by 1,2)
where rank = 1



-- Q.3 Identify the busiest day for each branch based on the number of transactions

select * 
from
(select 
	branch,
	to_char(to_date(date,'DD/MM/YY'), 'Day') as day_name,
	count(*) as no_transactions,
	rank() over(partition by branch order by count(*) desc) as rank
from walmart
group by 1,2)
where rank = 1


-- Q. 4 
-- Calculate the total quantity of items sold per payment method. List payment_method and total_quantity.

select 
	payment_method,
	sum(quantity) as no_qty_sold
from walmart
group by payment_method


-- Q.5
-- Determine the average, minimum, and maximum rating of category for each city. 
-- List the city, average_rating, min_rating, and max_rating.

select 
	city,
	category,
	avg(rating) as avg_rating,
	max(rating) as max_rating,
	min(rating) as min_rating
from walmart
group by 1,2


-- Q.6
-- Calculate the total profit for each category by considering total_profit as
-- (unit_price * quantity * profit_margin). 
-- List category and total_profit, ordered from highest to lowest profit.

select 
	category,
	sum(total) as total_revenue,
	sum(total * profit_margin) as  total_profit
from walmart
group by category
order by total_profit desc


-- Q.7
-- Determine the most common payment method for each Branch. 
-- Display Branch and the preferred_payment_method.

WITH cte
as
(
select 
	branch,
	payment_method,
	count(*) as total_trans,
	rank() over(partition by branch order by count(*) desc) as rank
from walmart
group by 1,2
)
select * from cte
where rank = 1


-- Q.8
-- Categorize sales into 3 group MORNING, AFTERNOON, EVENING 
-- Find out each of the shift and number of invoices

select 
	branch,
CASE 
		when extract(hour from (time::time)) < 12 then 'Morning'
		when extract(hour from (time::time)) between 12 AND 17 then 'Afternoon'
		else 'Evening'
	END day_time,
	count(*)
	
from walmart
group by 1,2
order by 1, 3 desc



-- 
-- #9 Identify 5 branch with highest decrese ratio in 
-- revevenue compare to last year(current year 2023 and last year 2022)

-- rdr == last_rev-cr_rev/ls_rev*100
select * from walmart

select *,
	extract(year from to_date(date, 'DD/MM/YY')) as formated_date
from walmart

-- 2022 Sales

with revenue_2022
as
(
	select 
		branch,
		sum(total) as revenue
	from walmart
	where extract(year from to_date(date, 'DD/MM/YY')) = 2022
	group by 1
),
revenue_2023
as
(
	select 
		branch,
		sum(total) as revenue
	from walmart
	where extract(year from to_date(date, 'DD/MM/YY')) = 2023
	group by 1
)
select 
	ls.branch,
	ls.revenue as last_year_revenue,
	cs.revenue as cr_year_revenue,
	round(
		(ls.revenue - cs.revenue)::numeric / 
		ls.revenue::numeric * 100,2) 
		as rev_dec_ratio
from revenue_2022 as ls
join 
revenue_2023 as cs
on ls.branch = cs.branch
where 
	ls.revenue > cs.revenue
order by 4 desc
limit 5











