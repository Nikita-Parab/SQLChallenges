Select *
from crime_scene_report
where city="SQL City" AND type="murder" AND date=20180115      

    
Select *
from Person
Where address_street_name = "Northwestern Dr" OR
(address_street_name = "Franklin Ave" AND name LIKE "Annabel %")
ORDER BY address_number desc 

//Witness 1 : 14887	Morty Schapiro
//Witness 2 : 16371	Annabel Miller
Select *
from interview
where person_id=14887 OR person_id=16371

//Witness 1 : Gunshot. Get fit gym bag, number started with 48Z. Plate included H42W
//Witness 2 : Suspect in gym 9th January
Select *
from get_fit_now_member as gm
join get_fit_now_check_in as gc
on gc.membership_id=gm.id
where gm.id like "48Z%" and gc.check_in_date=20180109

//2 members: 28819,67318
Select d.plate_number,p.name
from drivers_license as d
join person as p
on d.id=p.license_id
where plate_number like "%H42W%"
AND p.id=28819 OR p.id=67318

//I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
She has red hair and she drives a Tesla Model S. 
I know that she attended the SQL Symphony Concert 3 times in December 2017

select ssn,p.id
from drivers_license as d
join person as p
on p.license_id=d.id
where height >=65 AND height <=67
and hair_color="red"
and car_make="Tesla"

961388910	78881
337169072	90700
987756388	99716

select *
from facebook_event_checkin as f
join person as p
on p.id=f.person_id
where event_name="SQL Symphony Concert"
and person_id= 78881 OR person_id=90700 OR person_id=99716