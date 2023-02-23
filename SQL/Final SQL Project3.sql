select b.bandname, 
a.albumname, a.releasedate
from band_db.album as a
join band_db.band as b
on a.idband = b.idband
order by a.releasedate desc;


select * from band_db.album order by releasedate desc; 
select * from band_db.player;
select * from band_db.instrument;

-- Show players fullname and who plays the drum -- 
alter table band_db.player add Fullname varchar(45);
update band_db.player set Fullname=concat(pfname," ",plname);

select instrument, player.fullname
from band_db.instrument as i
join band_db.player as p on p.InstID = i.InstID
where i.instId = '4'; -- Advanced --

select concat(pfname, " ",plname) as fullname, instrument
from band_db.instrument as i
join band_db.player as p on p.InstID = i.InstID
where i.instId = '4';

select b.bandname, count(p.instid) as 'Instr ID'
from band_db.instrument as i
join band_db.player as p on i.InstID = p.InstID
join band_db.band as b on p.idband = b.idband
group by b.bandname
order by count(p.InstID) desc;

Select i.instrument, count(p.instid) as 'Instr ID'
from band_db.instrument as i
right join band_db.player as p on i.InstID = p.InstID
group by i.instrument
order by count(p.InstID) desc;

select a.albumname, a.releasedate,
case 
when isnull(a.albumname) and a.releasedate is not null then "no name"
when isnull(a.releasedate) and a.albumname is not null then "no date"
when isnull(a.albumname) and isnull(a.releasedate) then "no name and date"
else "has a name and date"
end as "Albumname and/or Releasedate"
from band_db.album as a
order by a.releasedate; 

select * from band_db.band;
select * from band_db.player;
select * from band_db.instrument;

insert into 
band_db.band 
values (22, 1,'Weezer'), (23, 1, 'TLC'), (24, 1, 'Paramore'), 
(25, 1, 'Blackpink'), (26, 1, 'Vampire Weekend'); 


insert into 
band_db.player
values (30, 3, 22, 'Rivers', 'Cuomo', 'Rochester', 'NY'),
(31, 1, 22, 'Brian', 'Bell', 'Iowa City', 'IA'),
(32, 4, 22, 'Patrick', 'Wilson', 'Buffalo', 'NY'),
(33, 2, 22, 'Scott', 'Shriner', 'Toledo', 'OH'),
(34, 3, 23, 'Tionne', 'Watkins', 'Des Moines', 'IA'),
(35, 3, 23, 'Rozonda', 'Thomas', 'Columbus', 'GA'),
(36, 3, 24, 'Hayley', 'Williams', 'Franklin', 'TN'),
(37, 1, 24, 'Taylor', 'York', 'Nashville', 'TN'),
(38, 4, 24, 'Zac', 'Farro', 'Voorhees Township', 'NJ'),
(39, 3, 25, 'Jisoo', 'Kim', ' ', 'South Korea'),
(40, 3, 25, 'Jennie', 'Kim', ' ', 'South Korea'),
(41, 3, 25, 'Roseanne', 'Park', ' ', 'New Zealand'),
(42, 3, 25, 'Lisa', 'Manoban', ' ', 'Thailand'),
(43, 3, 26, 'Ezra', 'Koenig', 'New York', 'NY'),
(44, 2, 26, 'Chris', 'Baio', 'Bronxville', 'NY'),
(45, 4, 26, 'Chris', 'Tomson', 'Upper Freehold Township', 'NJ');


select * from band_db.album;
select * from band_db.band;
select * from band_db.gig;
select * from band_db.instrument;
select * from band_db.player;
select * from band_db.venue;

insert into
band_db.venue
values (12, 'Twin City Rock House', 'Minneapolis', 'MN', 55414, 2000);

select v.state as 'State', v.seats as 'Max Seats'
from band_db.venue as v
where v.seats = (select max(v.seats) from band_db.venue)
order by v.seats desc;

insert into
band_db.gig (idvenue, idband, gigdate, numattendees)
values ( 4, 2, '2022-05-05',19000),
(12, 26, '2022-04-15', null),
(8, 23, '2022-06-07', 18000),
(2, 22, '2022-07-03', 175);

Select v.vname, v.city, v.state, v.seats, g.numattendees
from band_db.venue as v
join band_db.gig as g
on v.idvenue = g.idvenue
where v.seats < g.numattendees;

update band_db.gig as g set g.numattendees = 1750
where gigid = 14;

update band_db.gig as g set g.numattendees = 125
where gigid = 16;

CREATE VIEW vw_giginfo AS 
select b.bandname as 'Band', 
g.gigdate as 'Performance date', 
v.vname as 'Venue',
g.numattendees as '# of Attendees',
v.seats as 'Seats Capacity',
(g.numattendees/v.seats)*100 as 'Venue Capacity Percentage'
from band_db.band as b
join band_db.gig as g on g.idband = b.idband
join band_db.venue as v on g.idvenue = v.idvenue
Order by v.vname;

select * from band_db.vw_giginfo;

/* Create a stored procedure 
that lists all of the venues that 
can handle more than 10,000 guests. */

DELIMITER //

CREATE PROCEDURE Large_venue_10000()
Begin
	select * from band_db.venue as v where v.seats >= 10000;
END//
DELIMITER ;


CALL Large_venue_10000()

DELIMITER //

CREATE PROCEDURE Search_player()
Begin
	select b.bandname, concat(p.pfname, ' ', (p.plname)) as 'player fullname',
    p.homecity, p.homestate from band_db.band as b
    join band_db.player as p on b.idband = p.idband
    where p.homestate like '__';
END//
DELIMITER ;

CALL Search_player();

Select * from band_db.player;






select b.bandname, concat(p.pfname, ' ', (p.plname)) as 'player fullname',
    p.homecity, p.homestate from band_db.band as b
    join band_db.player as p on b.idband = p.idband
    where p.homestate like '__';
