/*
1:
	Skrifið stored procedure: StudentListJSon() sem notar cursor til að breyta vensluðum gögnum í JSon string.
	JSon-formuð gögnin eru listi af objectum.
	OBS: StudentListJSon skilar texta sem þið hafið formað.

	Niðurstöðurnar ættu að líta einhvern vegin svona út:

	[
		  {"first_name": "Guðrún", "last_name": "Ólafsdóttir", "date_of_birth": "1999-03-31"},
		  {"first_name": "Andri Freyr", "last_name": "Kjartansson", "date_of_birth": "2000-11-01"},
		  {"first_name": "Tinna Líf", "last_name": "Björnsson", "date_of_birth": "1998-08-14"},
		  {"first_name": "Magni Þór", "last_name": "Sigurðsson", "date_of_birth": "2000-05-27"},
		  {"first_name": "Rheza Már", "last_name": "Hamid-Davíðs", "date_of_birth": "2001-09-17"},
		  {"first_name": "Hadría Gná", "last_name": "Schmidt", "date_of_birth": "1999-07-29"},
		  {"first_name": "Jasmín Rós", "last_name": "Stefánsdóttir", "date_of_birth": "1996-02-29"}
	]
*/
use 0908012440_progresstracker_v6;
delimiter $$
drop procedure if exists StudentListJson$$
create procedure StudentListJson()
begin
	declare fn varchar(55);
    declare ln varchar(55);
    declare dateofbirth Date;
    declare stnarray JSON;
    
    
    declare done int default false;
    declare stnCursor cursor for select firstName,lastName,dob from students;
    
    declare continue handler for not found set done = true;
    open stnCursor;
    stn_loop:loop
		fetch stnCursor into fn,ln,dateofbirth;
        if (select JSON_LENGTH(stnarray) < 1) then
			select JSON_ARRAY((select JSON_OBJECT('dob',dateofbirth,'lastname',ln,'firstname',fn))) into stnarray;
        else
			select JSON_ARRAY_APPEND(stnarray,"$",(select JSON_OBJECT("dob",dateofbirth,"lastname",ln,"firstname",fn))) into stnarray;
        end if;
        if done then
			select stnarray;
			leave stn_Loop;
            close stnCursor;
		end if;
	end loop;
end$$
delimiter ;

Call StudentListJson();
/*
	2:
	Skrifið nú SingleStudentJSon()þannig að nemandinn innihaldi nú lista af þeim áföngum sem hann hefur tekið.
	Śé nemandinn enn við nám þá koma þeir áfangar líka með.
	ATH: setjið nemandann sem object.
	Líkleg niðurstaða:

	{
		"student_id": "1",
		"first_name": "Guðrún",
		"last_name": "Ólafsdóttir",
		"date_of_birth": "1999-03-31",
		"courses" :[
		  {"course_number": "STÆ103","course_credits": "5","status": "pass"},
		  {"course_number": "EÐL103","course_credits": "5","status": "pass"},
		  {"course_number": "STÆ203","course_credits": "5","status": "pass"},
		  {"course_number": "EÐL203","course_credits": "5","status": "pass"},
		  {"course_number": "STÆ303","course_credits": "5","status": "pass"},
		  {"course_number": "GSF2A3U","course_credits": "5","status": "pass"},
		  {"course_number": "FOR3G3U","course_credits": "5","status": "pass"},
		  {"course_number": "GSF2B3U","course_credits": "5","status": "pass"},
		  {"course_number": "GSF3B3U","course_credits": "5","status": "fail"},
		  {"course_number": "FOR3D3U","course_credits": "5","status": "fail"}
		]
	}
*/
delimiter $$
drop procedure if exists SingleStudentJson $$
create procedure SingleStudentJson(id int(11))
begin
declare stnid int(11);
declare fn varchar(55);
declare ln varchar(55);
declare date_o_b Date;
declare coursenr char(10);
declare coursecrdts tinyint(4);
declare pass tinyint(1);

declare count int(2);

declare singlestudentjson JSON;

declare done int default false;
    declare stnCursor cursor for 
select distinct students.studentID,students.firstName,students.lastName,students.dob,registration.courseNumber,courses.courseCredits,registration.passed
from Students
join registration on students.studentID = registration.studentID
join trackcourses on registration.trackID = trackcourses.trackID
join Courses on  trackcourses.courseNumber = courses.courseNumber
where students.studentID = id;
    
    declare continue handler for not found set done = true;
    open stnCursor;
    
set count = 0;
    stnloop:loop
		
		fetch stncursor into  stnid,fn,ln,date_o_b,coursenr,coursecrdts,pass;
        if count < 1
        then
			select JSON_OBJECT("student_id",stnid,"first_name",fn,"last_name",ln,"date_of_birth",date_o_b,"courses",JSON_ARRAY(JSON_OBJECT("course_number",coursenr,"course_credits",coursecrdts,"status",pass))) into singlestudentjson;
			Set count = 1;
        else
			select JSON_ARRAY_APPEND(singlestudentjson,"$.courses",JSON_OBJECT("course_number",coursenr,"course_credits",coursecrdts,"status",pass)) into singlestudentjson;
        end if;
		if done then
			select singlestudentjson;	
			leave stnloop;
            close stnCursor;
		end if;
	end loop;
  
end$$
delimiter ;
Call SingleStudentJson(1);

/*
	3:
	Skrifið stored procedure: SemesterInfoJSon() sem birtir uplýsingar um ákveðið semester.
	Semestrið inniheldur lista af nemendum sem eru /hafa verið á þessu semestri.
	Og að sjálfsögðu eru gögnin á JSon formi!

	Gæti litið út einhvern veginn svona(hérna var semesterID 8 notað á original gögnin:
	[
		{"student_id": "1", "first_name": "Guðrún", "last_name": "Ólafsdóttir", "courses_taken": "2"},
		{"student_id": "2", "first_name": "Andri Freyr", "last_name": "Kjartansson", "courses_taken": "1"},
		{"student_id": "5", "first_name": "Rheza Már", "last_name": "Hamid-Davíðs", "courses_taken": "2"},
		{"student_id": "6", "first_name": "Hadríra Gná", "last_name": "Schmidt", "courses_taken": "2"}
	]
*/

delimiter $$
drop procedure if exists SemesterInfoJson$$
create procedure SemesterInfoJson(semester_id int)
begin
	declare stnid int(11);
    declare fn varchar(55);
    declare ln varchar(55);
    declare courses_taken int;
    
    declare semesterinfo JSON default JSON_ARRAY();
    declare done int default false;
    
    declare semester_cursor cursor for
	select distinct students.studentID,students.firstName,students.lastName
    from students
    join registration on students.studentID = registration.studentID
    join semesters on registration.semesterID = semesters.semesterID
    where semesters.semesterID = semester_id
    order by studentID;
    
    declare continue handler for not found set done = true;
    
    open semester_cursor;
    semester_loop:loop
		fetch semester_cursor into stnid,fn,ln;
        
        set courses_taken = (select count(registration.courseNumber) 
		from students
		join registration on students.studentID = registration.studentID
		join semesters on registration.semesterID = semesters.semesterID
		where semesters.semesterID = semester_id and students.studentID = stnid);
        
		select JSON_ARRAY_APPEND(semesterinfo,"$",JSON_OBJECT("studentID",stnid,"first_name",fn,"last_name",ln,"courses taken",courses_taken)) into semesterinfo;
		if done then
			select semesterinfo;
            close semester_cursor;
			leave semester_loop;
		end if;
    end loop;
    
end$$
delimiter ;

call SemesterInfoJson(8);
-- ACHTUNG:  2 og 3 nota líka cursor!

