# Sprint 3 Report
## Team True
## Project: Flickr/Instagram Hybrid Internal Photo Search Site
## Site Name: TruHawk
### Roles
1. Project Manager -- Sarina Stoker
2. Developer -- Shan Shazad / Hasan Rizwan
3. Jr Developer -- Bhumi Patel
4. IT Operations -- Daniel Kolov
5. UI/UX Developer -- Jason D'Souza

### Project Goals:

 * To build a web server (C)
 * To build a database server (C)  
 * To get web server and database server running on everyone’s machine (C)
 * Configure vagrant files (C) 
 * Create Diagrams for Site Functionality (C)
 * Implementing PHP to the register and login page (C)
 * To generate and deploy RSA keys for each member on GitHub (C)
 * Switching over from HTTP to HTTPS with valid security  (C)
 * To build the vagrant boxes with RSA keys (C) 
 * Design an About Page (C) 
 * Successfully able to access the “TruHawk” website using an IP address (C)
 * To make the website responsive in order to fit any form factor: desktop, mobile and tablets(I)
 * Different user authentication panel on the website (I)
 * Allow users to upload photos using hashtags (I)
 * Data Encryption at Rest (I) 
 * To build cache server (I)

### Project Accomplishments: Goals Accomplished (11/13)

 * Configured vagrant files
 * Successfully deployed web server
 * Successfully deployed database server
 * Successfully implemented HTTPS
 * Connected the vagrant boxes with RSA keys
 * Successfully deployed RSA keys for each member via Github
 * Successfully built servers on each team member’s machine
 * Created Diagrams for Site Functionality
 * Successfully created an About Page
 * Successfully implemented PHP to both the register and login page
 * Successfully able to access the “TruHawk” website using an IP address


### Project Requirements:
1. Language and Framework of Choice:

  * HTML is used to structure the webpages
  * CSS is used to style our web pages 
  * Javascript / jQuery is used for the photo slideshow on the gallery page
  * PHPStorm used for login and register process
  * Vagrant/Packer is used for building the web server and database server
  * Apache 2.4.18 (Ubuntu)
  * Redis 5.0.3 is for our cache in-memory data structure 
  * MariaDB Server 10.0.38 provides an SQL interface for accessing data
  
2. Operating System Platform:

  * Linux - Ubuntu 16.04.5
  * Process of secrets management: gitignore, openSSL
  
3. Use of Data Store:

  * We will be using 2 database servers ( Platform: MySQL)
  * Use of Master/Slave
    - One of the databases will be used to store our information (Master) and this will be the database which we write to. This database will store some of the initial photos provided by the instructor and photos that potentially would be uploaded by users. As well as this server will host the user information such as name, email, usernames & passwords.
    - The other database (Slave) will be the one which we read from. Photos will be queried from this database using javascript media queries for pictures to display on our website and internally in the user accounts.

4. Data Encryption at Rest:

  * Encrypted using a symmetric cipher provided by OpenSSL. Password fields will be encrypted data using a one-way password hash.
  * MariaDB 10.0.38 has Data at Rest Encryption and is fully supported for XtraDB and InnoDB. This encryption method will be implemented. 
  
  XtraDB: A storage engine for the MariaDB 
  
  InnoDB: A storage engine for the database management system MySQL. 
  
  * MariaDB can allow our files to encrypt:
     - All tablespaces
     - Individual tables
     - Uses a 32-bit integer as a key identifier.
     - Encryption keys can also be rotated which basically creates a new version of the encryption key. Decryption is also readable through Maria’s file server keys. 

5. Use of Master & Slave Replication:
  * 2 Database Servers running MySQL - 1 server will serve as a master server and 1 server will be a slave.
  * 1 Apache web server that will host HTML, PHP, JavaScript and CSS 
  * 1 Redis cache server

<p>Our setup will use the Apache server for providing the UI (our website) to the end user, information from registration page and users uploading photos would be written to the master database server. The master will be connected to a slave server which will hold a copy of the database used for reads. By separating writes and reads we will minimize the required movement of the disk head.  On the master database, separating writes from reads will free up resources to focus on writes only and minimize the movement of the head by writing a few queries in a sequence and only moving the head once every few writes to move the data into the “heap” (permanent storage in the database). On the slave database, reducing its functions to primarily reads will allow it to handle more queries by freeing resources for the job.</p>
<p>We will implement a Redis Cache server which will be placed between our Web server and Slave Database server and it will be responsible for storing a portion of the database entries and allow for faster searching and queries entered on the web server.</p>
 
6. Responsive Design (In-progress):

<p>Our goal is to design our website with Responsive Web Design (RWD) that adapts the layout to the viewing environment by using CSS media queries ( an extension of the @media rule).</p>
<p>“Why media queries?” - Media queries allow the page to use different CSS style rules based on characteristics of the device the site is being displayed on, most commonly the width of the browser.</p>
<p>Technically we want a media-rich, widescreen page for desktop viewing and a smaller size page formatted for small screen viewing, with less clutter, larger fonts and tighter-wrapping constraints for mobile viewing.</p>
<p>Below is the IPhone X view without the use of media queries, for next sprint we are going to use media queries to make the mobile view look better.</p>

![mobile](images/mobile.jpg "Mobile View")


7. Use of HTTPS:

<p>While it was once reserved primarily for passwords and other sensitive data, the entire web is gradually leaving HTTP behind and switching to HTTPS. The “S” in HTTPS stands for “Secure”. It’s the secure version of the standard “hypertext transfer protocol” your web browser uses when communicating with websites. It is important for our application to run on HTTPS to gain the trust of our users. We have generated a self-signed certificate. The certificate is issued by Team True at the Illinois Institute of Technology and is good for one year.</p>
    
![https](images/https.png "HTTPS 1")

![https2](images/https2.png "HTTPS 2")

![https3](images/https3.png "HTTPS 3")
  * Firewall
    - Using UFW (Uncomplicated Firewall) in Apache 2:
    - Ideally, we want to limit the number of ports open and only want to use which we need. This is a list of open ports and our current firewall setup.
   
![ufw](images/ufw.png "Uncomplicated Firewall Rules") 

  * Authentication keys (if applicable) 
  * Seeding of usernames and passwords 
  * Pre-seeding databases/datastores with schema and records ----//
  
8. Use of User Authentication:

**Unauthenticated users access:** 

* Will have access to “read-only” data
* Restrict certain site features until they have created an account

**Authenticated normal users will have access to:**
  * Upload photos
  * View own photos
  * Search for photos (hashtags)
![php](images/php.png "PHP")  
**Administrator Access:**
  * Custom made admin panel 
  * Able to delete other users photos
  * Able to delete accounts
9. Creation of Dev Environment:
![devenv](images/devenv.png "Dev Environment")

![devenv](images/devenv1.png "Dev Environment Servers")

![serverdiag](images/serverdiag.png "Server Diagram")

10. Layout Design:
  * Home page:
  
![homepage](images/homepage.png "Homepage Layout")

  * Button Link:
  
![buttonslink](images/buttonslink.png "Buttons Link")

  * Login & Register page:
  
![lregpage](images/lregpage.png "Login/Registration Layout")

  * Photo-Gallery page:
  
![pgallery](images/pgallery.png "Photo Gallery page Layout")

  * Site Flow:
  
  
![sflow](images/sflow.png "Site Flow Diagram")

11. Management of Visio Diagram:
<p>Diagrams managed on a weekly basis or whenever we have an update by UI/UX and Project Manager. A tool that we are using to create diagrams is LucidChart.</p>

12. Management of project progress:

<p>Mostly all the communication and update process for this project is done through slack. We are keeping track of our to-do, in-progress and done tasks through trello. Upon the completion of the task, the person assigned to that task moves the card to the done section.</p>
  * Trello:
  
![trello](images/trello.png "Trello")

  * Slack:

![slack](images/slack.png "Slack")

  * Github:
  
![deploykeys](images/deploykeys.png "Deploy Keys")  
  
13. Test Users:
<p>Fifteen test users were generated, and data will be injected into our MariaDB database at build. For the purpose, ‘.sql’ file will be created with the insert command to add values into the username, password and other account required fields.</p>

![testusers](images/testusers.png "Test Users")


**Any issues/Bugs?**
<p>We had an issue with our web server not working in the lab. It might be just a matter of restarting the system we were tasting on and we will attempt it again at our next meeting in the smart lab.</p>
<p>We also had an issue where mariadb was not granting permissions to the user "worker" and it turned out after countless hours of hair pulling that it was missing '' surrounding the IP address.</p>

**Goals for Next Sprint:**
  * Successfully build and deploy a cache server (with Redis)
    - Hassn will work on using packer/vagrant to build a Redis cache server
  * Continue to manage diagrams as new pieces are implemented
    - Diagrams for new website interface for logged in users
  * Have a full functioning website user and admin panel
    - UI for authenticated users needs to be developed Shan & Daniel
    - Administrator login detection needs to be implemented
    - Administrator UI needs to be designed
    - Administrator UI needs to be developed and styled HTML + CSS + JQuery
  * Data Encryption at Rest
    - Enable Data Encryption at rest for mariadb
  * To focus more on responsive design, having the website function properly in multiple form factors, such on mobile, tablet, etc.
    - include mobile first css which will detect screen size and style our webpage according to device its been used on.
    - Add JQueries that will assure graet user experience on any screen size.

#### Individual Reflections
**Daniel** - 

**Sarina** - 

**Jason** - 

**Shan** -  

**Hasan** -   

**Bhumi** - 
