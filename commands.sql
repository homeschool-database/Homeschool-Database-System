/***********************************************************\
|	Create a new address									|
\***********************************************************/

INSERT INTO addresses (address_id, address_line_one, address_line_two, address_country, address_state, address_city, address_zip) VALUES
(0, "Line One", "Line Two", "Country", "State", "City", 00000);

/***********************************************************\
|	Create a new institution								|
\***********************************************************/

INSERT INTO institutions (institution_id, institution_name, phone_number, email_address, address_id) VALUES
(0, "Institution", "123-456-7890", "email@address.com", 0);

/***********************************************************\
|	Create new semesters									|
\***********************************************************/

INSERT INTO semesters (semester_id, semester_term, semester_year) VALUES
(202001, "Spring", 2020),
(202002, "Summer", 2020),
(202003, "Fall", 2020);

/***********************************************************\
|	Create the grade levels									|
\***********************************************************/

INSERT INTO grade_levels (grade_level_id, grade_level_name) VALUES
(1, "Freshman"),
(2, "Sophomore"),
(3, "Junior"),
(4, "Senior");

/***********************************************************\
|	Create a new student									|
\***********************************************************/

INSERT INTO students (student_id, full_name, date_of_birth, student_sex, semester_entered_id, semester_graduated_id, grade_level_id, address_id) VALUES
(0, "Student Name", "2002-01-01", "M", 202001, 202003, 4, 0);

/***********************************************************\
|	Create a new teacher									|
\***********************************************************/

INSERT INTO teachers (teacher_id, institution_id, full_name, phone_number, email_address) VALUES
(DEFAULT, 0, "Teacher Name", "123-456-7890", "email@address.com");

/***********************************************************\
|	Create new course										|
\***********************************************************/

INSERT INTO courses (course_id, course_name, course_subject, course_credits) VALUES
(0, "Calculus II", "Math", 1.00);

/***********************************************************\
|	Create new course section								|
\***********************************************************/

INSERT INTO sections (section_id, course_id, semester_id) VALUES
(0, 0, 202001);

/***********************************************************\
|	Add a teacher to a section								|
\***********************************************************/

INSERT INTO teaches_section (teacher_id, section_id) VALUES
(0, 0);

/***********************************************************\
|	Enroll in course section								|
\***********************************************************/

INSERT INTO enrolled_in_section (student_id, section_id, midterm_grade, final_grade, final_grade_raw) VALUES
(0, 0, "A", "A", 100.0);

/***********************************************************\
|	Drop a course section									|
\***********************************************************/

DELETE FROM enrolled_in_section
WHERE student_id = 0 AND section_id = 0;

/***********************************************************\
|	View all students										|
\***********************************************************/

SELECT * FROM students
ORDER BY full_name;

/***********************************************************\
|	View all teachers										|
\***********************************************************/

SELECT * FROM teachers
ORDER BY full_name;

/***********************************************************\
|	View all courses										|
\***********************************************************/

SELECT * FROM courses
ORDER BY course_subject AND course_name;

/***********************************************************\
|	View all sections										|
\***********************************************************/

SELECT * FROM sections
ORDER BY course_id AND section_id;

/***********************************************************\
|	View all sections of a course							|
\***********************************************************/

SELECT * FROM sections
WHERE course_id = 0
ORDER BY section_id;