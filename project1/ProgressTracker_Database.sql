drop database if exists 0908012440_ProgressTracker_V6;

create database 0908012440_ProgressTracker_V6
	default character set utf8
	default collate utf8_general_ci;

set default_storage_engine = innodb;
set sql_mode = 'STRICT_ALL_TABLES';

use 0908012440_ProgressTracker_V6;

-- Semesters
create table Semesters
(
	semesterID int auto_increment,
    semesterName char(10) not null,
    semesterStarts date not null,
    semesterEnds date not null,
    academicYear char(10) null,
    constraint semester_PK primary key(semesterID)
);

-- School information
create table Schools
(
	schoolID int auto_increment,
    schoolName varchar(75),
    constraint school_PK primary key(schoolID)
);

-- Divisions belonging to certain scool(s)
create table Divisions
(
	divisionID int auto_increment,
    divisionName varchar(75) not null,
    schoolID int not null,
    constraint division_PK primary key(divisionID),
    constraint division_school_FK foreign key(schoolID) references Schools(schoolID)
);

-- Each division has at least one track
create table Tracks
(
	trackID int auto_increment,
    trackName varchar(75),
    validFrom date,
    divisionID int not null,
    constraint track_PK primary key(trackID),
    constraint track_division_FK foreign key(divisionID) references Divisions(divisionID)
);

-- All the courses in the database
create table Courses 
(
  courseNumber char(10),
  courseName varchar(75) not null,
  courseCredits tinyint(4) default 3,
  constraint course_PK primary key(courseNumber),
  constraint name_unique unique(courseName)
);

-- A course may or may not have restrictors applied to them
create table Restrictors 
(
  courseNumber char(10) not null,
  restrictorID char(10) not null,
  restrictorType char(1) default '1',
  constraint restrictor_PK primary key (courseNumber,restrictorID),
  constraint course_course_FK foreign key (courseNumber) references Courses (courseNumber),
  constraint restrictor_course_FK foreign key (courseNumber) references Courses (courseNumber)
);

-- Courses belonging to a certain track. A course can belong to more then one track(N:M)
create table TrackCourses
(
	trackID int not null,
    courseNumber char(10) not null,
    Semester tinyint unsigned null,
    mandatory tinyint unsigned,
    constraint trackcourse_PK primary key(trackID,courseNumber),
    constraint track_course_tracks_FK foreign key(trackID) references Tracks(trackID),
    constraint track_course_courses_FK foreign key(courseNumber) references Courses(courseNumber)
);


create table Students
(
	studentID int auto_increment,
    firstName varchar(55),
    lastName varchar(55),
    dob date,
    startSemester int not null,
    constraint student_PK primary key(studentID),
    constraint student_semester_FK foreign key(startSemester) references Semesters(semesterID)
);


create table Registration
(
	registrationID int auto_increment,
    studentID int not null,
    trackID int not null,
    courseNumber char(10) not null,
    registrationDate date,
    passed boolean,
    semesterID int null,
    constraint registration_PK primary key(registrationID),
    constraint registration_student_FK foreign key(studentID) references Students(studentID),
    constraint registration_course_FK foreign key(trackID,courseNumber) references TrackCourses(trackID,courseNumber),
	constraint registration_semester_FK foreign key(semesterID) references Semesters(semesterID)
);
