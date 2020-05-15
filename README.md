# User Documentation

The goal of this home school database system is to provide a quick, simple, and easy management system for parents of homeschooled high school students to keep track of their information digitally.

While there are many school database systems, there are very few with the reduced scale and price necessary to manage only a few students.

Also, the low-level and hands-on nature of the software allows parents who need to modify and extend the functionality of the database to suit their need to do so, as long as they have some basic knowledge of MySQL architecture design.

## Installation

Two other softwares are required before the installation of this software.

[MySQL](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/) and [MySQL Workbench](https://dev.mysql.com/doc/workbench/en/wb-installing.html).

Follow the links above.

Your MySQL and MySQL Workbench should be fully configured and operational before continuing the installation process.

Return here once you have finished.

1. Download the latest version of our software from our GitHub and unzip its contents.

2. Start your MySQL server.

3. Startup MySQL Workbench and connect to your localhost.

4. Open the "create_school.sql" script in MySQL Workbench and run the entire SQL script.

At this point, our database is fully installed and configured to its base functionality.

## MySQL Workbench

The primary user interface to interact with our software will be through the MySQL Workbench application.

Much of the interface is self-explanatory in its functionality, but several keys functions will be highlighted.

1. In the upper left corner, there are two buttons to create and open new .sql files.

2. Within the query editor, there is a disk symbol that saves the current file and a lightning bolt symbol that run the file.

3. Under the Schemas tab, you can reload and also view all your databases. This is useful in familiarizing yourself with the design of the database.

More information: [MySQL Workbench](https://www.mysql.com/products/workbench/dev/)

## Using the Database

To make changes to and insert new data into the database, follow these steps.

Note: As this is a database, the user should be familiar with basic MySQL database statements and commands.

More information: [Getting Started](https://dev.mysql.com/doc/mysql-getting-started/en/), [Reference Manual](URL), and [MySQL Statements](https://dev.mysql.com/doc/refman/8.0/en/sql-statements.html)

1. Inside MySQL Workbench, please create a new SQL file, name it, and save it where it is accessible.

2. Design your MySQL query and then save it.

3. Run the SQL file and its queries to make changes to the database.

## Reporting Bugs

To report any bugs in the software or to request help, please navigate to the [Issues](https://github.com/homeschool-database/homeschool-database-system/issues) tab on our GitHub and submit a new issue. Please include all relevant information, including your email so we can contact you, the nature of your bug or issue, where it arises in the software, any terminal or command line output, and also any relevant images or links.

This is a public forum, so please do not post any personal information.

Our team will get back to you as soon as possible.


# Developer Documentation

## How to Obtain the Source Code

The Source code is located in our [GitHub](https://github.com/homeschool-database/homeschool-database-system). The source code is the most recent developmental version of the software, and as such, it will not always be release ready or be identical to the current release version.

## How to Obtain the Most Current Release

The most current release version can be found on our [GitHub](https://github.com/homeschool-database/homeschool-database-system/releases). The release version is meant to be the most stable version of the database. It will not always include the most recent developmental changes or updates.

## The Software Directory Structure

The Directory of the Software is very straightforward, and there are only two main components. The main "create_school.sql" file creates the database, and the "commands.sql" file contains basic templates for SQL statements that can be run on the database.

## How to Build Upon or Test the Database

Download or clone the current source code of the software to your local version of MySQL Workbench and then make your changes to the "commands.sql" file. Changes to "create_school.sql" can be submitted, but they are less likely to be accepted into the larger codebase unless they are deemed necessary.

For testing, the best option is to run all your commands within the scope of a test database and then confirm all the changes are as expected and that the queried information is what was requested. Submitted changes will be further testest and possibly improved upon by the team.

## How to Release a New Version of the Database

Single developers can not currently release a new version. If the current code base is determined to be sufficiently stable and ready for release, then our team will publish a new release. Developers can contribute to the release process by suggesting changes and submitting new features.

## How to Access the List of Outstanding Bugs

The list of all outstanding and resolved bugs and issues can be found under [Issues](https://github.com/homeschool-database/homeschool-database-system/issues).

## Comments for Contributing to the Source Code

1. Please leave comments on all of your code. Explain all your changes and why you made them.

2. Please follow the basic code style demonstrated in the source code. While your contribution will be refactored and tailored to fit into our codebase, your changes are more likely to be accepted if they are readable.

3. Please properly test your changes. They will be tested further by our development team, but if your changes do not compile or are unable to be merged into our system, they will be discarded.


# More Information

More information about this project can be found in the sections down below.

Since this project is always being worked on and always being improved upon, some information may quickly become out of date. If you notice any information that does not fully align with our most current release, please submit an [Issue](), and we'll get back to you as soon as possible.

The below content is only meant to give developers, and possibly interested parents, a more in-depth overview of the development and design process of this software.

## Introduction and Overview

The goal of this document is to generally outline the basic functionality of a database system designed to aid in the administrative duties and record-keeping work for homeschooled high school students. The primary architectural style will be based on the principles of Data Abstraction and Object-Oriented. There will be no external interface as this software will consist entirely of the database system. The general naming convention for this system is that every title will be all lowercase with underscores between each word. The primary goal in the naming convention will be to provide as much clarity as possible for the users, the home school system administrators. In regard to testing, each table and modeled relationship will be fully and thoroughly tested before being merged into the larger system. This database system will be developed at no cost, over the course of at most two weeks, with 2-3 hours a day of development and testing. There should be no significant issues that affect performance. In terms of scalability, each table, i.e., object, will be designed to be as isolated as possible to make sure that there is no overlap or entanglement in functionality. None of the primary functions of this database system should be out of scope or unfeasible to be implemented.

## Architecture 

The goal of this software is to create a database that can be used to track the progress of and store the information of homeschooled high school students. Any homeschool administrator should be able to download this premade database, install it to their local system, and then enter in, query, and update information in this database to perform seven primary functions and the necessary smaller functions that aide these larger functions. The seven primary functions are as listed. One, add students to the system. Two, manage, update, and query personal student information. Three, add courses to the system. Four, update, and query course details. Five, add students to courses. Six, update a student’s current course schedule. Seven, calculate a student’s GPA by semester and cumulatively.

## Architectural style 

As the entirety of this software is a database, the style of organization used for this system will be, as in the sense of Garlan and Shaw, based around the principles of Data Abstraction and Object-Oriented Organization. All the needed and necessary information and data will be grouped into specific tables, equivalent to classes or objects, that will all be a part of the database schema. The relationships between these tables will also be stored in the database as well in order to simulate the real-life connections between this data. Once this is done, this database will then be able to be queried, to either view or manipulate the data inside the database.

## External Interfaces

This piece of software will solely consist of the database. As such, there will not be any direct menu or program interface to enter information into the database. Instead, the home school system administrator, whoever they will be, will install this database to their system and through either the terminal or an IDE submit queries to the database. All data will be entered this way, including all student information and all individual course information.

## Use Cases

The use cases for this database system will be very straightforward as most of the functionally is described in the naming of the seven primary functions of this system listed above. For example, to add a student to a course, the precondition is that both the student and the course exist, and the postcondition is that the student is registered. This framework is accurate for all the other main functions as most of the usability of this system comes from entering and manipulating data.

## Data Dictionary

This is a small list of some of the most used terms in regard to this software.
System Administrator: The user of this software.
Student: A table in the database. Containing at least the following information. A unique student id, their name, their classification, a student email address, a primary phone number, a primary residential address, the name of their primary guardian.

Teacher: A table in the database. Containing at least the following information. A unique teacher id, their name, an email address, a primary phone number, and the name of their institution.

Course: A table in the database. Containing at least the following information. A unique course id, the teacher’s unique id, the course name, a short course description, and the name of their institution the course was taught at.

Course Grade: A table in the database modeling a relationship between the student and course tables. Containing at least the following information. A student id, a course id, the letter grade earned, and possibly the actual percentage grade earned for that course by that student.

Semester GPA: A derived value from the student, course, and grade tables. The number of credits earned based on each course grade for that specific semester divided by the number of credits attempted that particular semester.

Cumulative GPA: A derived value from the student, course, and grade tables. The sum of all the Semester GPAs divided by the number of semesters taken so far.

## Naming Conventions

In regard to the naming convention of this database, extreme care will be taken to make sure that all data column names are not domain-specific. In addition, all table names, relationship names, and column names will be all lowercase with underscores separating each word. In practice, this means that for the student table, the student id would not be stored as “id,” but as “student_id.” This is so that there will be no conflicts when modeling relationships. For example, in the case where we model the relationship of a student being registered for a course, we would store that as some combination of the “student_id,” the “course_id,” and any other needed data.

## Test Plan

Concerning testing, all tables in the database will be made sure to only store the information relevant to that modeled object so that there is no duplicate information. Also, all relationships will be carefully tested to ensure that that they all accurately model what they are designed to. The database schema that will be installed will also come with test data that will demonstrate how to properly add and manipulate information in the database.

## Methodology and Cost

It should take no more than 2-3 hours a day, for two weeks at the most to fully implement the base functionality of this software. The author of this document will have completed all development of this software. There will be no cost involved in the development of this software; all tools and resources used with either be free or open-source.

## Performance

As this entire software consists only of a database and the database will be designed so that it only stores the most relevant and needed information, there are very few performance issues that could affect the use of this software. However, some performance issues could arise if the database is not properly configured after installation or if the database does not correctly scale for vast data sets. Even so, as this database is designed to only be used for storing the information of homeschooled high school students for a single homeschool, it can be assumed that the data sets used in practice will not lead to any performance or scalability issues.

## Evolvability

The database will be designed so that each table, i.e., object, will contain only the information relevant to itself and the minimum amount of data linking it to other tables, which means that each table will be isolated as much as possible from the other tables in the database. The goal of this is so that if the relationships or requirements change, then the only things that need to be changed in the database schema will be the modeled relationships. If changes are made to any specific table, then those changes will not reflect in any significant measure on any of the other tables.

## Feasibility

The only goal of this software is to provide a convenient and efficient means for the storage of and manipulation of the general information of homeschooled high school students. Within this domain, there should be nothing overly strenuous or unfeasible for this database.
