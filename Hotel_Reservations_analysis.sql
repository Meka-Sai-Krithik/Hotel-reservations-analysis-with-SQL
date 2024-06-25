-- The total number of reservations in the dataset 

-- select count(*) as total_reservations 
-- from Reservations;


-- The most popular meal plan among guests

-- select type_of_meal_plan, 
-- count(type_of_meal_plan) as meals_count 
-- from Reservations 
-- group by type_of_meal_plan;


-- The average price per room for reservations involving children

-- select avg(avg_price_per_room) avg_price_with_child
-- from Reservations 
-- where no_of_children>0;


-- Reservations made for the year 2017 & 2018

-- select substring(arrival_date,-4) as year,
-- count(*) as total_reservations from Reservations 
-- where substring(arrival_date,-4)='2017' or '2018' group by year;


-- The most commonly booked room type

-- select room_type_reserved, count(room_type_reserved) as reserved_type
-- from Reservations 
-- group by room_type_reserved order by reserved_type desc;


-- Reservations fall on a weekend

-- select count(*) as weekend_night_reservations 
-- from Reservations
-- where no_of_weekend_nights>0;


-- The highest and lowest lead time for reservations

-- select max(lead_time) as highest_lead_time_for_reservation,
-- 		min(lead_time) as lowest_lead_time_for_reservation
-- from Reservations;


-- The most common market segment type for reservations

-- select market_segment_type, count(market_segment_type) as reservation_count
-- from Reservations
-- group by market_segment_type order by reservation_count desc limit 1;


-- Number of reservations have a booking status of "Confirmed"

-- select count(*) as bookings_confirmed
-- from Reservations
-- where booking_status ='Not_Canceled';


-- The total number of adults and children across all reservations

-- select sum(no_of_adults) as adults_count,
-- sum(no_of_children) as children_count
-- from Reservations;


-- The average number of weekend nights for reservations involving children

-- select avg(no_of_weekend_nights) avg_weekend_nights_for_childs 
-- from Reservations
-- where no_of_children>0;


-- Reservations made in each month of the year

-- select month(str_to_date(arrival_date,'%d-%m-%y')) as month, 
-- count(*) as total_reservations
-- from Reservations
-- group by month(str_to_date(arrival_date,'%d-%m-%y')) order by month;


-- The average number of nights (both weekend and weekday) spent by guests for each roomtype

-- select room_type_reserved, round(avg(no_of_weekend_nights+ no_of_week_nights),2) as avg_nights
-- from Reservations
-- group by room_type_reserved;


-- The most common room type and the average price for that room type

-- select room_type_reserved, round(avg(avg_price_per_room),2) as avg_price
-- from Reservations
-- where no_of_children>0
-- group by room_type_reserved order by avg_price desc;


-- The market segment type that generates the highest average price per room

-- select market_segment_type, round(avg(avg_price_per_room),2) as avg_price 
-- from Reservations
-- group by market_segment_type order by avg_price desc;