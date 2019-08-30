USE 0908012440_progresstracker_v6;
-- 1:
-- Birtið lista af öllum áföngum sem geymdir eru í gagnagrunninum.
-- Áfangarnir eru birtir í stafrófsröð
delimiter $$
drop procedure if exists CourseList $$

create procedure CourseList()
begin
	SELECT * FROM COURSES;
end $$
delimiter ;


-- 2:
-- Birtið upplýsingar um einn ákveðin áfanga.
delimiter $$
drop procedure if exists SingleCourse $$

create procedure SingleCourse(course_number CHAR(10))
begin
	SELECT * FROM COURSES
    WHERE courseNumber LIKE concat('%',course_number,'%');
end $$
delimiter ;

-- 3:
-- Nýskráið áfanga í gagnagrunninn.
-- Það þarf að skrá áfanganúmerið, áfangaheitið og einingafjöldann
delimiter $$
drop procedure if exists NewCourse $$

create procedure NewCourse(crsNumb CHAR(10), crsName VARCHAR(75), crsCredits TINYINT(4))
begin
	INSERT INTO COURSES
    VALUES (crsNumb,crsName,crsCredits);
end $$
delimiter ;

/*
-- 4:
-- Uppfærið réttan kúrs.
-- row_count() fallið er hér notað til að birta fjölda raða sem voru uppfærðar.
delimiter $$
drop procedure if exists UpdateCourse $$

create procedure UpdateCourse()
begin
	
end $$
delimiter ;
*/

-- 5:
-- ATH: Ef verið er að nota áfangann einhversstaðar(sé hann skráður á TrackCourses töfluna) þá má EKKI eyða honum.
-- Sé hins vegar hvergi verið að nota hann má eyða honum úr bæði Courses og Restrictor töflunum.
delimiter $$
drop procedure if exists DeleteCourse $$

create procedure DeleteCourse(crs char(10))
begin
    if
    not exists(select * from trackcourses where courseNumber = crs)
    then delete from restrictors
    where courseNumber = crs;
    end if;
    if
    not exists(select * from trackcourses where courseNumber = crs)
    then delete from courses
    where courseNumber = crs;
    end if;
end $$
delimiter ;


-- 6:
-- fallið skilar heildarfjölda allra áfanga í grunninum
delimiter $$
drop function if exists NumberOfCourses $$
    
create function NumberOfCourses(yr int)
returns int
begin
	return(select count(*) from trackcourses where semester = yr);
end $$
delimiter ;

select NumberOfCourses(1);

-- 7:
-- Fallið skilar heildar einingafjölda ákveðinnar námsleiðar(Track)
-- Senda þarf brautarNumer inn sem færibreytu
delimiter $$
drop function if exists TotalTrackCredits $$
    
create function TotalTrackCredits(trackid int)
returns int
begin
	return (select sum(coursecredits) from courses join trackCourses on courses.courseNumber = trackCourses.courseNumber where trackCourses.trackID = trackid);
end $$
delimiter ;

select TotalTrackCredits(9);

/*
-- 8: 
-- Fallið skilar heildarfjölda áfanga sem eru í boði á ákveðinni námsleið
delimiter $$
drop function if exists TotalNumberOfTrackCourses $$
    
create function TotalNumberOfTrackCourses()
returns int
begin
	-- kóði hér...
end $$
delimiter ;


-- 9:
-- Fallið skilar true ef áfanginn finnst í töflunni TrackCourses
delimiter $$
drop function if exists CourseInUse $$
    
create function CourseInUse()
returns int
begin
	-- kóði hér...
end $$
delimiter ;


-- 10:
-- Fallið skilar true ef +arið er hlaupár annars false
delimiter $$
drop function if exists IsLeapyear $$

create function IsLeapYear()
returns boolean
begin
	-- kóði hér...
end $$
delimiter ;
*/

-- 11:
-- Fallið reiknar út og skilar aldri ákveðins nemanda
delimiter $$
drop function if exists StudentAge $$

create function StudentAge(stnid int)
returns int
begin
	return(select datediff(current_date(),dob)/365 from students where studentID = stnid);
end $$
delimiter ;

select StudentAge(1);

-- 12:
-- Fallið skilar fjölda þeirra eininga sem nemandinn hefur tekið(lokið)
delimiter $$
drop function if exists StudentCredits $$
    
create function StudentCredits(stnid int)
returns int
begin
	return(select sum(courses.courseCredits) from courses join trackcourses on courses.courseNumber = trackcourses.courseNumber join registration on trackcourses.courseNumber = registration.courseNumber where registration.passed = 1 and registration.studentID = stnid);
end $$
delimiter ;

select StudentCredits(2);
/*
-- 13:
-- Hér þarf að skila Brautarheiti, heiti námsleiðar(Track) og fjölda áfanga
-- Aðeins á að birta upplýsingar yfir brautir sem hafa námsleiðir sem innihalda áfanga.
delimiter $$
drop procedure if exists TrackTotalCredits $$

create procedure TrackTotalCredits()
begin
	-- kóði hér...
end $$
delimiter ;
*/

-- 14:
-- Hér þarf skila lista af öllum áföngum ásamt restrictorum og tegund þeirra.
-- Hafi áfangi enga undanfara eða samfara þá birtast þeir samt í listanum.
delimiter $$
drop procedure if exists CourseRestrictorList $$

create procedure CourseRestrictorList()
begin
	
end $$
delimiter ;

/*
-- 15:
-- RestrictorList birtir upplýsingar um alla restrictora ásamt áföngum.
-- Með öðrum orðum: Gemmér alla restrictora(undanfara, samfara) og þá áfanga sem þeir hafa áhrif á.
delimiter $$
drop procedure if exists RestrictorList $$

create procedure RestrictorList()
begin
	-- kóði hér...
end $$
delimiter ;
*/