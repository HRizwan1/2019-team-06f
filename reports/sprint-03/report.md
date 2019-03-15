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

 * To build a slave database server using Packer (C)
 * To build Redis cache server using Packer (C)
 * Fix binding error (50-server.cnf is ignored causing a binding error due to permissions) (C)
 * Designed and create tables for users and pictures using mysql (C)
 * Create “create-new.sql” and “insert-new.sql” files to use at build for automation (C)
 * Create an upload button for a registered user to upload photos (C)
 * Create a search box (C)
 * Create admin panel to view all users and to create admins / regular users (C)
 * Restricted privileges for unregistered : only read access (index page) (C)
 * To develop the user panel by allowing registered users to upload photos (C)
 * Layout diagram for user/admin interface  (C)
 * Hashtag the photos (C)
 * Gather pictures we will use for test user accounts and store in our database (C)
 * Be able to display photos from database (C)
 * Data Encryption at Rest using XtraDB and InnoDB (I) 
 * Continue on coding the upload feature to link pictures that belong to each user (I)
 * To make the website responsive in order to fit any form factor, such as desktop, mobile, and tablet (I)
 * Incorporate Riemann for capture of application metrics (I)

### Project Accomplishments: Goals Accomplished (14/17)

 * Built a slave database server using Packer and Vagrant
 * Built Redis cache server using Packer and Vagrant
 * Automated of Data Entry
 * Designed & Created tables for users and pictures using MySQL
 * Created “create-new.sql” and “insert-new.sql” files to use at build for automation
 * Admin Panel created
 * User Panel created
 * Created search box and upload feature-button
 * Gathered test photos for each test user and stored in the database (225 photos)
 * Website pulls from the database to display photos in user accounts
 * Users can upload as well as view all available photos
 * Binding error fixed from one of our github issues last sprint
 * Restricted privileges for unregistered users




### Project Requirements:
1. Language and Framework of Choice:

  * HTML-5 is used to structure the webpages
  * CSS-3 is used to style our web pages 
  * Javascript / jQuery is used for the photo slideshow on the gallery page
  * PHP is used for login and registering process
  * Vagrant/Packer are used for building and automating the building of the servers
  * Apache 2.4.18 (Ubuntu) web server hosts HTML, PHP, Javascript, and CSS
  * Redis 5.0.3 is used as in-memory data structure store and allow for faster searching and to cache data from the webserver
  * MariaDB Server 10.0.38 provides an SQL interface for accessing data
  
2. Operating System Platform:

    a. Linux - Ubuntu 16.04.5

    b. Process of secrets management: gitignore, openSSL, SSH key

      * Gitignore - The gitignore file was created for the purpose of preventing files from being uploaded without needing to explicitly exclude them. Any file added to gitignore is not included in git commits. Using gitignore allows system-specific files to be untouched, and it ensures that those sensitive files will never get uploaded.</p>

      * openSSL - Purpose of using openSSL is to keep the sending and receiving traffic safe and secure between the server and clients without the possibility of the messages being intercepted by outside parties.</p>

      *  SSH Key - To automate the secure access to the servers, bypassing the need to manually enter log-in credentials. The SSH key provides strong, encrypted verification and communication between the user and a remote computer. RSA keys are used to verify users before allowing the cloning of our private repository into the remote servers.</p>

      * SHA1-hash - We used SHA-1 with salt to hash our passwords

      ![Alt Text](https://media.giphy.com/media/l4Jz3a8jO92crUlWM/giphy.gif)

      * Privileges - Unregistered users cannot view photos; Admin have the ability to view and create new users

    c. Capture of application metrics: 

      * Riemann 0.3.1 is going to be used for capture of application metrics. We plan to incorporate this in the next sprint. 
      ![riemann](images/riemann.png "Riemann")
  
3. Use of Data Store:
  * We are using 2 database servers (Platform: MariaDB/MySQL)
  * One of the database server serves as the master which we write to. One of the uses of this database is that it is the one that is manipulated by our application. All writes are done to this database. This means that all user information and photos are written to this database.
  * The other database server serves as the slave and is the database which we read from. User infomration and photos are transferred from the master database to this database using a replication process. Our application uses this database to pull information and photos from.
  * One Redis Cache Server used for caching the data sent between the slave database and webserver. Redis is a NoSQL key-value data store. For storing a value, we associate it with a key and store it in Redis. Purpose of using Redis caching is to improve database loading performance.


4. Data Encryption at Rest:

  * Encrypted using a symmetric cipher provided by OpenSSL. Password fields are encrypted using SHA1-hash with salt (salt concatenates random data with the hash)
  * MariaDB 10.0.38 has Data at Rest Encryption and is fully supported for XtraDB and InnoDB. 
  
  * XtraDB: A storage engine for the MariaDB 
  
  * InnoDB: A storage engine for the database management system MySQL. 
  
  * MariaDB allow our files to encrypt:
     - All tablespaces
     - Individual tables
     - Uses a 32-bit integer as a key identifier.
     - Encryption keys can also be rotated which basically creates a new version of the encryption key. Decryption is also readable through Maria’s file server keys. 


5. Use of MySQL/MariaDB Database Master-Slave Replication:
  * Database Schema:
  ![schema](images/schema.png "Schema")
  * 2-Database Servers running MySQL/MariaDB - 1 server serves as a master server and another server servers as a slave. Master and slave servers are connected.
  * The purpose of using the master-slave replication process is to enable data from one MySQL database server (servering as 'the master') to be copied automatically to the another MySQL databse server (which serves as 'the slave'). 
  * The master-slave replication is a one-way replication (from master to slave), the master database is used only for the write operations, while the slave database is only used for read operations.
  * During designing or deploying application, all the write operations (statement/query that changes the state of database) are excuted ONLY on the master server. As to minimize the risk of data conflicts on the slave, changes can only be made through the replication process 
  * 1 Apache web server hosts HTML, PHP, JavaScript and CSS
  * 1 Redis Cache server

  <p>(Our setup uses the Apache server for providing the UI (our website) to the end user, information from registration page and users uploading photos are written to the master database server. The master is connected to a slave server which holds a copy of the database used for reads. Writes and reads are seperated to minimize the required movement of the disk head.  On the master database, separating write from read frees up resources to focus on writes only and minimize the movement of the head by writing a few queries in a sequence and only moving the head once every few writes to move the data into the “heap” (permanent storage in the database). On the slave database, reducing its functions to primarily reads which then allow it to handle more queries by freeing resources for the job.</p>
  <p>A Redis Cache server is placed between our Web server and Slave Database server and is  responsible for storing a portion of the database entries and allow for faster searching and queries entered on the web server.)</p>
 
6. Responsive Design (In-progress):

<p> Responsive Web Design is in progress. Want our website to fit  </p>


7. Use of HTTPS:

  <p>The entire website has left HTTP behind and switched to HTTPS. The “S” in HTTPS stands for “Secure”. It’s the secure version of the standard “hypertext transfer protocol” your web browser uses when communicating with websites. It is important for our application to run on HTTPS to gain the trust of our users. We have generated a self-signed certificate. The certificate is issued by Team True at the Illinois Institute of Technology and is good for one year.</p>
    
  ![https](images/https.png "HTTPS 1")

  ![https2](images/https2.png "HTTPS 2")

  ![https3](images/https3.png "HTTPS 3")
  * Firewall
    - Using UFW (Uncomplicated Firewall) in Apache 2:
    - Ideally, we want to limit the number of ports open and only want to use which we need. This is a list of open ports and our current firewall setup.
   
  ![ufw](images/ufw.png "Uncomplicated Firewall Rules") 

  * Authentication keys (if applicable) 
  * Seeding of username and passwords as well as pre-seeding databases with schema and records is done on build using packer build scripts. 
  
8. Use of User Authentication:

  **Unauthenticated users access:** 

  * Have access to “read-only” data
  * Restricted features until account created (cannot view gallery or have any access to photos without an account)
  **Authenticated normal users have access to:**
  * Upload photos
  * View own photos
  * Search for photos (hashtags)
  ![user](images/user.png "user")  
  **Administrator Access:**
  * Custom made admin panel
  * Able to create accounts (admin or user)
  * Able to view all accounts
  ![admin](images/admin.png "Admin")
  ![adminadd](images/admin_panel_add1.png "Adminadding")
  ![adminadd2](images/admin_panel_add2.png "Adminadding2")
  ![admin2](images/admin2.png "Admin 2")

9. Creation of Dev Environment:

  <p> We have created the webserver, database master and slave, as well as the cache server using Packer. All of our servers are currently deployable. </p>

  ![devenv](images/devenv.png "Dev Environment")


  ![serverdiag](images/serverdiag.png "Server Diagram")

  We are able to deploy all 4 servers using Packer build. Any issues or bugs during deployment or issues with UI/UX are reported using Github Issues. These Github Issues are then furthur assigned as tasks to the appropriate team members to fix. 

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
  <p>Diagrams managed on a weekly basis and updates are made by the UI/UX leader and Project Manager. A tool that we are using to create diagrams is LucidChart.</p>

  ![lucidchart](images/lucidchart.png "Lucidchart")

12. Management of project progress:

  <p> All the communication and update process for this project is done through Slack. We have integrated Github on Slack so that commits are shown immediately on Slack.  We are keeping track of our to-do, in-progress and done tasks through Trello. Upon the completion of the task, the person assigned to that task moves the card to the done section. We are keeping in contact throughout the duration of the sprint via Slack to update eachother on accomplishments/issues.</p>

  * Trello:
  
  ![trello](images/trello.png "Trello")

  * Slack:

  ![githubonslack](images/githubonslack.png "Github Slack Integration")

  * Github Issues:

  ![githubissues](images/githubissues.png "Github Issues")
  
  * Github:
  
  ![github](images/github.png "Github")  
  
13. Test Users:
  <p>Fifteen test users were generated, and the data is being inserted in our MariaDB databases at build. New users can be added or deleted from the database thereafter. For the purpose, ‘.sql’ files are being used with the insert command to add values into the username, user_type, email and password fields. Fifteen images are being inserted for each user.  </p>

  ![testusers](images/testusers.png "Test Users")
  ![testimages](images/testimages.png "Test Images")

**Any issues/Bugs?**
  <p>We  had an issue where mariadb was not granting permissions to the user "worker" and it turned out after countless hours of hair pulling that it was missing '' surrounding the IP address.</p>
  <p>
  <p>We looked into incorporating cloudinary into our website but found that it is our competitor. They have some great tagging and searching features for images. However, incorporating the cloudinary API into our application leaves our website useless if their servers go down. As a group we decided to continue developing features for our own application as a pose to using an API.</p>

**Goals for Next Sprint:**
  * Responsive design, making the website function properly in other form factors:mobile & tablet.
    - Include mobile first css which will detect screen size and style our webpage according to device it's been used on.
    - Add JQueries that will assure a great user experience on any screen size.
  * Data Encryption at Rest using XtraDB and InnoDB
  * Functioning search box

#### Individual Reflections
**Daniel** - 

**Sarina** - 

**Jason** - 

**Shan** -  

**Hasan** - I think we were able to make very good progress this sprint. Although we only had two weeks in between sprints I believe we made the best of it. In this sprint I worked with Shan to implement SHA1 hashing with salt. On my own, I was able to create a functional database slave and a cache server. Also, I worked closely with Daniel to implement the upload page. I worked with Bhumi to preseed the database with user information and pictures. I think as a group we accomplished alot and in the next sprint I plan to work on monitoring applications and data encryption at rest.    

**Bhumi** - 
