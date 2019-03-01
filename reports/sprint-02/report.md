# Sprint 2 Report
## Team True
## Project: Flickr/Instagram Hybrid Internal Photo Search Site
## Site Name: TruHawk
### Roles
1. Project Manager -- Daniel Kolov
2. Developer -- Sarina Stoker
3. Jr Developer -- Jason D’Souza 
4. IT Operations -- Shan Shazad / Hasan Rizwan
5. UI/UX Developer -- Bhumika Patel

### Project Goals:

  * To build a web server (C)
  * To build a database server (C)
  * To get web server and database server running on everyone’s machine (C)
  * Configure vagrant files (C)
  * Implementing PHP to the register and login page (C)
  * To generate and deploy RSA keys of each member on GitHub (C)
  * Switching over from HTTP to HTTPS with valid security  (C)
  * To build the vagrant boxes with RSA keys (C)
  * Design About Page (C)
  * To make the website responsive in order to fit any form factor: desktop, mobile, tablet, or whatever is next (I)
  * To build cache server (I)
  * Create Diagrams for Site Functionality (C)

### Project Accomplishments: Goals Accomplished (9/12)

  * Configured vagrant files
  * Successfully deployed web server
  * Successfully deployed database server
  * Successfully built both a database and web server
  * Successfully implemented HTTPS
  * Connected the vagrant boxes with RSA keys
  * Successfully deployed RSA keys for each member via Github
  * Successfully built servers on each team member’s machine
  * Created Diagrams for Site Functionality

### Project Requirements:
1. Language and Framework of Choice:

  * HTML 
  * CSS to style our web pages 
  * Javascript / jQuery is used for the photo slideshow on the gallery page
  * PHPStorm used for login and register process
  * Vagrant/Packer is used for building the web server and database server
  * Apache
  * Redis
  * mariaDB server provides an SQL interface for accessing data
  
2. Operating System Platform:

  * Linux - Ubuntu 16.04.5
  
3. Use of Data Store:

  * We will be using 2 database servers ( Platform: MySQL)
  * Use of Master/Slave
    - One of the databases will be used to store our information (Master) and this will be the database which we write to. This database will store some of the initial photos provided by the instructor and photos that potentially would be uploaded by users. As well as this server will host the user information such as name, email, usernames & passwords.
    - The other database (Slave) will be the one which we read from. Photos will be queried from this database using javascript media queries for pictures to display on our website and internally in the user accounts.


  
  
  
  
  
![https](images/https.png "HTTPS 1")
![https2](images/https2.png "HTTPS 2")
![https3](images/https3.png "HTTPS 3")
![testusers](images/testusers.png "Test Users")
![deploykeys](images/deploykeys.png "Deploy Keys")

#### Individual Reflections
Daniel -  

Sarina - 

Jason - 

Shan - 

Hasan - 

Bhumi - 
