insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2015','2015-08-01','2015-12-31','2015-2016');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2016','2016-01-01','2016-05-31','2015-2016');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2016','2016-08-01','2016-12-31','2016-2017');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2017','2017-01-01','2017-05-31','2016-2017');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2017','2017-08-01','2017-12-31','2017-2018');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2018','2018-01-01','2018-05-31','2017-2018');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2018','2018-08-01','2018-12-31','2018-2019');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2019','2019-01-01','2019-05-31','2018-2019');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2019','2019-08-01','2019-12-31','2019-2020');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2020','2020-01-01','2020-05-31','2019-2020');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2020','2020-08-01','2020-12-31','2020-2021');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2021','2021-01-01','2021-05-31','2020-2021');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2021','2021-08-01','2021-12-31','2021-2022');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2022','2022-01-01','2022-05-31','2021-2022');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2022','2022-08-01','2022-12-31','2022-2023');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2023','2023-01-01','2023-05-31','2022-2023');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2023','2023-08-01','2023-12-31','2023-2024');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2024','2024-01-01','2024-05-31','2023-2024');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2024','2024-08-01','2024-12-31','2024-2025');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2025','2025-01-01','2025-05-31','2024-2025');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Haust2025','2025-08-01','2025-12-31','2025-2026');
insert into Semesters(semesterName,semesterStarts,semesterEnds,academicYear)values('Vor2026','2026-01-01','2026-05-31','2025-2026');

insert into Schools(schoolName) values('Tækniskólinn');

insert into Divisions(divisionName,schoolID)values('Byggingatækniskólinn',1);
insert into Divisions(divisionName,schoolID)values('Endurmenntunarskólinn',1);
insert into Divisions(divisionName,schoolID)values('Flugskóli Íslands',1);
insert into Divisions(divisionName,schoolID)values('Handverksskólinn',1);
insert into Divisions(divisionName,schoolID)values('Margmiðlunarskólinn',1);
insert into Divisions(divisionName,schoolID)values('Meistaraskólinn',1);
insert into Divisions(divisionName,schoolID)values('Raftækniskólinn',1);
insert into Divisions(divisionName,schoolID)values('Skipstjórnarskólinn',1);
insert into Divisions(divisionName,schoolID)values('Tækniakademían',1);
insert into Divisions(divisionName,schoolID)values('Tæknimenntaskólinn',1);
insert into Divisions(divisionName,schoolID)values('Upplýsingatækniskólinn',1);
insert into Divisions(divisionName,schoolID)values('Vefskólinn',1);
insert into Divisions(divisionName,schoolID)values('Véltækniskólinn',1);

insert into Tracks(trackName,divisionID)values('Almennt nám Upplýsingatækniskóla - AN UTN',11);
insert into Tracks(trackName,divisionID)values('Bókband',11);
insert into Tracks(trackName,divisionID)values('Grafísk miðlun',11);
insert into Tracks(trackName,divisionID)values('Grunnnám upplýsinga- og fjölmiðlagreina',11);
insert into Tracks(trackName,divisionID)values('K2 Tækni- og vísindaleiðin',11);
insert into Tracks(trackName,divisionID)values('Ljósmyndun',11);
insert into Tracks(trackName,divisionID)values('Prentun',11);
insert into Tracks(trackName,divisionID)values('Stúdentspróf',10);
insert into Tracks(trackName,validFrom,divisionID)values('Tölvubraut TBR16 - stúdentsbraut','2016-08-01',11);
insert into Tracks(trackName,divisionID)values('NTT13 Náttúrufræðibraut tölvutækni',10);

insert into Courses(courseNumber,courseName,courseCredits)
values('GSF2A3U','Gagnasafnsfræði I',5),
	  ('GSF2B3U','Gagnasafnsfræði II',5),
	  ('GSF3A3U','Gagnanotkun',5),
	  ('GSF3B3U','Gagnagreining',5);
insert into Courses(courseNumber,courseName,courseCredits)
values('FOR3G3U','Inngangur að leikjaforritun',5),
	  ('FOR3L3U','Leikjaforritun',5),
	  ('FOR3D3U','3D leikjaforritun',5);
insert into Courses(courseNumber,courseName,courseCredits)
values('STÆ103','Inngangur að stærðfræði',5),
	  ('STÆ203','Algebra',5),
	  ('STÆ303','Rúmfræði',5),
      ('STÆ313','Tölfræði',5),
      ('STÆ403','Vektorar',5),
      ('STÆ503','Diffrun og Heildun',5),
      ('STÆ603','Stærðfræðigreining',5);
insert into Courses(courseNumber,courseName,courseCredits)
values('EÐL103','Eðlisfræði I',5), 
	  ('EÐL203','Eðlisfræði II',5),
	  ('EÐL303','Eðlisfræði III',5),
	  ('EÐL403','Eðlisfræði IV',5);
insert into Courses(courseNumber,courseName,courseCredits)
values('CNA103','Inngangur að netkerfum I',5), 
	  ('CNA203','Tölvukerfi og beinar',5),
	  ('CNA303','Netlerfi - hönnun',5),
	  ('CNA403','Netkerfi - stjórnun',5);

insert into Students(firstName,lastName,dob,startSemester)values('Guðrún','Ólafsdóttir','1999-03-31',5);
insert into Students(firstName,lastName,dob,startSemester)values('Andri Freyr','Kjartansson','2000-11-01',6);
insert into Students(firstName,lastName,dob,startSemester)values('Tinna Líf','Björnsson','1998-08-14',3);
insert into Students(firstName,lastName,dob,startSemester)values('Magni Þór','Sigurðsson','2000-05-27',6);
insert into Students(firstName,lastName,dob,startSemester)values('Rheza Már','Hamid-Davíðs','2001-09-17',7);
insert into Students(firstName,lastName,dob,startSemester)values('Hadríra Gná','Schmidt','1999-07-29',5);
insert into Students(firstName,lastName,dob,startSemester)values('Jasmín Rós','Stefánsdóttir','1996-02-29',1);

insert into Restrictors(courseNumber,restrictorID,restrictorType)values('GSF2B3U','GSF2A3U',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('GSF3A3U','GSF2B3U',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('GSF3A3U','GSF3B3U',2);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('GSF3B3U','GSF3A3U',3);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('STÆ203','STÆ103',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('STÆ303','STÆ203',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('STÆ303','STÆ313',2);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('STÆ313','STÆ203',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('STÆ403','STÆ303',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('STÆ503','STÆ403',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('STÆ603','STÆ503',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('EÐL103','STÆ103',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('EÐL203','EÐL103',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('EÐL303','EÐL203',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('EÐL403','EÐL303',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('FOR3G3U','STÆ403',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('FOR3L3U','FOR3G3U',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('FOR3L3U','EÐL203',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('FOR3L3U','FOR3D3U',2);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('CNA203','CNA103',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('CNA303','CNA203',1);
insert into Restrictors(courseNumber,restrictorID,restrictorType)values('CNA403','CNA303',1);

insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'GSF2A3U',4,true);  
insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'FOR3G3U',4,true);
insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'FOR3D3U',5,true);
insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'GSF2B3U',5,true);
insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'GSF3B3U',5,true);
insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'STÆ103',1,true);
insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'EÐL103',1,true);
insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'STÆ203',2,true);
insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'EÐL203',2,true);
insert into TrackCourses(trackID, courseNumber,semester,mandatory)values(9,'STÆ303',3,true);

insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'STÆ103','2016-07-31',true,5);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'EÐL103','2016-07-31',true,5);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'STÆ203','2016-07-31',true,6);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'EÐL203','2016-07-31',true,6);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'STÆ303','2016-07-31',true,7);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'GSF2A3U','2016-07-31',true,8);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'FOR3G3U','2016-07-31',true,8);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'GSF2B3U','2016-07-31',true,9);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'GSF3B3U','2016-07-31',false,9);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(1,9,'FOR3D3U','2016-07-31',false,9);

insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'STÆ103','2016-07-31',true,6);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'EÐL103','2016-07-31',true,6);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'STÆ203','2016-07-31',true,7);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'EÐL203','2016-07-31',true,7);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'STÆ303','2016-07-31',true,8);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'GSF2A3U','2016-07-31',true,9);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'FOR3G3U','2016-07-31',true,9);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'GSF2B3U','2016-07-31',true,10);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'GSF3B3U','2016-07-31',true,10);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(2,9,'FOR3D3U','2016-07-31',false,10);

insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'STÆ103','2016-07-31',true,3);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'EÐL103','2016-07-31',true,3);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'STÆ203','2017-01-01',true,4);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'EÐL203','2016-07-31',true,4);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'STÆ303','2018-01-01',false,5);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'GSF2A3U','2018-05-16',true,6); 
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'FOR3G3U','2018-05-16',true,6);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'GSF2B3U','2018-05-16',true,7);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'GSF3B3U','2018-05-16',true,7);  
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(3,9,'FOR3D3U','2017-08-08',true,7);

insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'STÆ103','2016-07-31',true,3);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'EÐL103','2016-07-31',true,3);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'STÆ203','2017-01-01',true,4);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'EÐL203','2016-07-31',true,4);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'STÆ303','2018-01-01',true,5);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'GSF2A3U','2018-05-16',true,6); 
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'FOR3G3U','2018-05-16',true,6);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'GSF2B3U','2018-05-16',true,7);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'GSF3B3U','2018-05-16',true,7);  
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(4,9,'FOR3D3U','2017-08-08',true,7);

insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'STÆ103','2016-07-31',true,7);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'EÐL103','2016-07-31',true,7);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'STÆ203','2017-01-01',true,8);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'EÐL203','2016-07-31',true,8);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'STÆ303','2018-01-01',true,9);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'GSF2A3U','2018-05-16',true,10); 
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'FOR3G3U','2018-05-16',true,10);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'GSF2B3U','2018-05-16',false,11);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'GSF3B3U','2018-05-16',true,11);  
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(5,9,'FOR3D3U','2017-08-08',true,11);

insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'STÆ103','2016-07-31',true,5);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'EÐL103','2016-07-31',true,5);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'STÆ203','2016-07-31',true,6);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'EÐL203','2016-07-31',true,6);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'STÆ303','2016-07-31',false,7);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'GSF2A3U','2016-07-31',true,8);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'FOR3G3U','2016-07-31',true,8);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'GSF2B3U','2016-07-31',true,9);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'GSF3B3U','2016-07-31',true,9);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(6,9,'FOR3D3U','2016-07-31',true,9);

insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'STÆ103','2016-07-31',true,1);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'EÐL103','2016-07-31',true,1);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'STÆ203','2016-07-31',true,2);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'EÐL203','2016-07-31',false,2);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'STÆ303','2016-07-31',true,3);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'GSF2A3U','2016-07-31',true,4);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'FOR3G3U','2016-07-31',true,4);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'GSF2B3U','2016-07-31',true,5);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'GSF3B3U','2016-07-31',false,5);
insert into Registration(studentID,trackID,courseNumber,registrationDate,passed,semesterID)values(7,9,'FOR3D3U','2016-07-31',true,5);