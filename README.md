# Books Collection App - iO Academy 2022

# Table of Contents
1. [About](#1-about)
2. [Installation](#2-installation)
3. [Usage](#3-usage)
4. [Development](#4-development)

## 1. About
### Content
Project 2 relating to 2nd module of iO Full-Stack Web Development.

### Objective
Individual project with the objective of testing knowledge acquired in the previous 2 week sprint of learning on the subjects of:
+ Git / Github workflow and best practices
+ SQL to build and maintain a relational database
+ PHP and PSR-12 best practices to display and update the data from the database

### Technologies
+ DataBase  - Sequel Ace (MySQL) https://sequel-ace.com/ - Follow instructions for download
+ PHP - https://www.php.net/
+ HTML5 - https://html.spec.whatwg.org/
+ CSS3
+ Git 

## 2. Installation
Follow the next steps to install locally:

1. Install Git using the following the instructions for the corresponding OS - https://github.com/git-guides/install-git
2. Clone this repository using the following command
```
git clone https://github.com/TherealGuah/collectionApp.git
```
3. Download Sequel Ace using the link provided above in the Technologies section;
   1. On Sequel Ace start type "root" for your Username and "password" for your Password (!!!very safe I know!!!)
   2. Create a New Database named "booksDB"
   3. Copy the content of the booksDB.sql file in the "docs" folder manually into the "Query" section of Sequel Ace and click the "Run All" button
4. Navigate on your Browser to localhost:1234/collectionApp/index.php to display the webpage with the data

## 3. Usage
After installation the data can be inserted manually using Sequel Ace to be displayed automatically. Later development will allow for insertion from within the browser.

## 4. Development
+ Minimum Viable Product has been achieved as of current version.
+ Next step will include data insertion from a form within the browser
