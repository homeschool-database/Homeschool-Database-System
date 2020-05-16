/***********************************************************\
|	Creates the school_database database					|
\***********************************************************/

DROP DATABASE IF EXISTS school_database;
CREATE DATABASE school_database;
USE school_database;

/***********************************************************\
|	Creates the addresses table in the database.			|
\***********************************************************/

CREATE TABLE addresses (
	address_id			INT 			PRIMARY	KEY		AUTO_INCREMENT,
	address_line_one	VARCHAR(255)	NOT NULL,	
    address_line_two	VARCHAR(255)	NOT NULL,
	address_country		VARCHAR(255)	NOT NULL,	
    address_state		VARCHAR(255)	NOT NULL,
    address_city		VARCHAR(255)	NOT NULL,
    address_zip			INT				NOT NULL
);

/***********************************************************\
|	Creates the institutions table in the database.			|
\***********************************************************/

CREATE TABLE institutions (
	institution_id		INT				PRIMARY KEY		AUTO_INCREMENT,
	institution_name	VARCHAR(255)	NOT NULL,
    phone_number		VARCHAR(255)	NOT NULL,
    email_address		VARCHAR(255)	NOT NULL,
    address_id			INT 			NOT NULL
);

/***********************************************************\
|	Creates the semesters table in the database.			|
\***********************************************************/

CREATE TABLE semesters (
	semester_id		INT				PRIMARY KEY		AUTO_INCREMENT,
	semester_term	VARCHAR(10)		NOT NULL,
	semester_year	INT				NOT NULL	
);

/***********************************************************\
|	Creates the grade_levels table in the database.			|
\***********************************************************/

CREATE TABLE grade_levels (
	grade_level_id		INT				PRIMARY KEY		AUTO_INCREMENT,
    grade_level_name	VARCHAR(10)
);

/***********************************************************\
|	Creates the students table in the database.				|
\***********************************************************/

CREATE TABLE students (
	student_id					INT				PRIMARY KEY		AUTO_INCREMENT,
    full_name					VARCHAR(255)	NOT NULL,
    date_of_birth				DATETIME		NOT NULL,
    student_sex					VARCHAR(1)		NOT NULL,
    semester_entered_id			INT				NOT NULL,
    semester_graduated_id		INT,
    grade_level_id 				INT 			NOT NULL,
	address_id					INT 			NOT NULL
);

/***********************************************************\
|	Creates the teachers table in the database.				|
\***********************************************************/

CREATE TABLE teachers (
	teacher_id			INT				PRIMARY KEY		AUTO_INCREMENT,
    institution_id		INT				NOT NULL,
    full_name			VARCHAR(255)	NOT NULL,
    phone_number		VARCHAR(255)	NOT NULL,
    email_address		VARCHAR(255)	NOT NULL
);

/***********************************************************\
|	Creates the courses table in the database.				|
\***********************************************************/

CREATE TABLE courses (
	course_id			INT				PRIMARY KEY		AUTO_INCREMENT,
    course_name			VARCHAR(255)	NOT NULL,
	course_subject		VARCHAR(255)	NOT NULL,
    course_credits		DECIMAL(3, 2)	NOT NULL
);

/***********************************************************\
|	Creates the sections table in the database.				|
\***********************************************************/

CREATE TABLE sections (
 	section_id		INT			PRIMARY KEY		AUTO_INCREMENT,
 	course_id		INT 		NOT NULL,
	semester_id		int			NOT NULL
);

/***********************************************************\
|	Creates the enrolled_in_section table in the database.	|
\***********************************************************/

CREATE TABLE enrolled_in_section (
 	student_id			INT				NOT NULL,
	section_id			INT				NOT NULL,
 	midterm_grade		VARCHAR(3) ,
	final_grade			VARCHAR(3),
    final_grade_raw		DECIMAL(5, 2)
);

/***********************************************************\
|	Creates the teaches_section table in the database.		|
\***********************************************************/

CREATE TABLE teaches_section (
	teacher_id		INT 	NOT NULL,
	section_id		INT		NOT NULL
);