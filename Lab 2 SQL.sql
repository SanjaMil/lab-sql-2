use sakila;
select first_name, last_name, actor_id from actor
where first_name = 'Scarlett';
select first_name, last_name, actor_id from actor
where last_name = 'Johansson';
select count(inventory_id) from rental;
select* from rental;
select count(inventory_id) from rental
where return_date < current_date();
select min(datediff(Day, rental_date, return_date)) as 'MIN Rental period',  max(datediff(Day, rental_date, return_date)) as 'MIN Rental period' from rental;
select date_format((rental_date), '%Y-%m-%d') from rental;
select min(datediff(date_format((rental_date), '%Y-%m-%d'), date_format((return_date), '%Y-%m-%d'))), max(datediff(date_format((rental_date), '%Y-%m-%d'), date_format((return_date), '%Y-%m-%d')))  from rental;

select min(rental_duration) as 'Min rental duration', max(rental_duration) as 'max rental duration' from film;
select min(length) as 'Min_duration', max(length) as 'max_duration' from film;
select avg(length) from film;
select length from film;
select round(avg(length)/60, 0) as 'hours', round((avg(length)%60),0) as 'minutes' from film;
select count(film_id) from film

where length > 180;


select  upper(left(first_name, 1)), upper(last_name), lower(email) from customer; 
select max(length(title)) from film;
