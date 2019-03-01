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

4. Data Encryption at Rest:
  * Encrypted using a symmetric cipher provided by OpenSSL. Password fields will be encrypted data using a one-way password hash.
  * MariaDB 10.0.38 has Data at Rest Encryption and is fully supported for XtraDB and InnoDB.
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
<p>We will implement a Redis Cache server which will be placed between our Web server and Slave Database server and it will be responsible for storing a portion of the database entries and allow for faster searching and reads from the web server.</p>
 
6. Responsive Design (In-progress):

<p>Our goal is to design our website with Responsive Web Design (RWD) that adapts the layout to the viewing environment by using CSS media queries ( an extension of the @media rule).</p>
<p>“Why media queries?” - Media queries allow the page to use different CSS style rules based on characteristics of the device the site is being displayed on, most commonly the width of the browser.</p>
<p>Technically we want a media-rich, widescreen page for desktop viewing and a smaller size page formatted for small screen viewing, with less clutter, larger fonts and tighter-wrapping constraints for mobile viewing.</p>
<p>Below is the IPhone X view without the use of media queries, for next sprint we are going to use media queries to make the mobile view look better.</p>
![mobileview](images/mobile.png "Mobile View")

7. Use of HTTPS:

<p>While it was once reserved primarily for passwords and other sensitive data, the entire web is gradually leaving HTTP behind and switching to HTTPS. The “S” in HTTPS stands for “Secure”. It’s the secure version of the standard “hypertext transfer protocol” your web browser uses when communicating with websites. It is important for our application to run on HTTPS to gain the trust of our users. We have generated a self-signed certificate. The certificate is issued by Team True at the Illinois Institute of Technology and is good for one year.</p>

 


  
  
  
  
  
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
