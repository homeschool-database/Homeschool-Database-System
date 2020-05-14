# **User Documentation**

The goal of this home school database system is to provide a quick, simple, and easy management system for parents of homeschooled high school students to keep track of their information digitally.

While there are many school database systems, there are very few with the reduced scale and price necessary to manage only a few students.

Also, the low-level and hands-on nature of the software allows parents who need to modify and extend the functionality of the database to suit their need to do so, as long as they have some basic knowledge of MySQL architecture design.

## **Installation**

Two other softwares are required before the installation of this software.

[MySQL](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/) and [MySQL Workbench](https://dev.mysql.com/doc/workbench/en/wb-installing.html).

Follow the links above.

Your MySQL and MySQL Workbench should be fully configured and operational before continuing the installation process.

Return here once you have finished.

1) Download the latest version of our software from our GitHub and unzip its contents.

2) Start your MySQL server.

3) Startup MySQL Workbench and connect to your localhost.

4) Open the "create_school.sql" script in MySQL Workbench and run the entire SQL script.

At this point, our database is fully installed and configured to its base functionality.

## **MySQL Workbench**

The primary user interface to interact with our software will be through the MySQL Workbench application.

Much of the interface is self-explanatory in its functionality, but several keys functions will be highlighted.

1) In the upper left corner, there are two buttons to create and open new .sql files.

2) Within the query editor, there is a disk symbol that saves the current file and a lightning bolt symbol that run the file.

3) Under the Schemas tab, you can reload and also view all your databases. This is useful in familiarizing yourself with the design of the database.

More information: [MySQL Workbench](https://www.mysql.com/products/workbench/dev/)

## **Using the Database**

To make changes to and insert new data into the database, follow these steps.

Note: As this is a database, the user should be familiar with basic MySQL database statements and commands.

More information: [Getting Started](https://dev.mysql.com/doc/mysql-getting-started/en/), [Reference Manual](URL), and [MySQL Statements](https://dev.mysql.com/doc/refman/8.0/en/sql-statements.html)

1) Inside MySQL Workbench, please create a new SQL file, name it, and save it where it is accessible.

2) Design your MySQL query and then save it.

3) Run the SQL file and its queries to make changes to the database.

## **Reporting Bugs**

To report any bugs in the software or to request help, please navigate to the [Issues](https://github.com/homeschool-database/homeschool-database-system/issues) tab on our GitHub and submit a new issue. Please include all relevant information, including your email so we can contact you, the nature of your bug or issue, where it arises in the software, any terminal or command line output, and also any relevant images or links.

This is a public forum, so please do not post any personal information.

Our team will get back to you as soon as possible.


# **Developer Documentation**





Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```
