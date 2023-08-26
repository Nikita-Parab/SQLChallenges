Select *
from crime_scene_report
where city="SQL City" AND type="murder" AND date=20180115      

    
Select *
from Person
Where address_street_name = "Northwestern Dr" OR
(address_street_name = "Franklin Ave" AND name LIKE "Annabel %")
ORDER BY address_number desc 


Select *
from interview
where person_id=14887 OR person_id=16371

    
Select *
from get_fit_now_member as gm
join get_fit_now_check_in as gc
on gc.membership_id=gm.id
where gm.id like "48Z%" and gc.check_in_date=20180109


Select d.plate_number,p.name
from drivers_license as d
join person as p
on d.id=p.license_id
where plate_number like "%H42W%"
AND p.id=28819 OR p.id=67318


select ssn,p.id
from drivers_license as d
join person as p
on p.license_id=d.id
where height >=65 AND height <=67
and hair_color="red"
and car_make="Tesla"


select *
from facebook_event_checkin as f
join person as p
on p.id=f.person_id
where event_name="SQL Symphony Concert"
and person_id= 78881 OR person_id=90700 OR person_id=99716
