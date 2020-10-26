use sakila;

select f.film_id, count(r.rental_id) as num_rental, rental_duration, rental_rate, length, rating, replacement_cost,special_features, r.rental_date from film f
left join inventory i
on f.film_id=i.film_id
left join rental r
on i.inventory_id=r.inventory_id
group by f.film_id
having (r.rental_date >= '2005-05-15') and (r.rental_date <= '2005-05-30');




select f.film_id, count(r.rental_id) as num_rental, f.rental_duration, f.rental_rate, f.length, c.name as categories,f.rating, f.replacement_cost, f.special_features, r.rental_date from film f
left join inventory i
on f.film_id=i.film_id
left join rental r
on i.inventory_id=r.inventory_id
left join film f2
on f2.film_id=i.film_id
left join film_category fc
on f2.film_id=fc.film_id
left join category c
on c.category_id= fc.category_id
and (r.rental_date >= '2005-05-15') and (r.rental_date <= '2005-05-30')
group by f.film_id
order by f.film_id ;







select f.film_id, count(r.rental_id) as num_rental, r.rental_date from film f
left join inventory i
on f.film_id=i.film_id
left join rental r
on i.inventory_id=r.inventory_id
left join film f2
on f2.film_id=i.film_id
left join film_category fc
on f2.film_id=fc.film_id
left join category c
on c.category_id= fc.category_id
and (r.rental_date >= '2005-06-15') and (r.rental_date <= '2005-06-30')
group by f.film_id
order by f.film_id desc;


select f.film_id,r.rental_date from film f
left join inventory i
on f.film_id=i.film_id
left join rental r
on i.inventory_id=r.inventory_id
join film f2
on f2.film_id=i.film_id
join language lng
on lng.language_id=f2.language_id
and (r.rental_date >= '2005-06-15') and (r.rental_date <= '2005-06-30')
group by f.film_id
order by f.film_id;



select c.name from category c
join film_category fc
on fc.category_id=c.category_id
join film f
on fc.film_id= f.film_id


select lng.name from language lng
join film f
on lng.language_id=f.language_id;

 select count(*) from film;