select properties.city as city, count(reservations) as total_reservations
from properties join reservations
  on properties.id = property_id
group by city
order by total_reservations desc;