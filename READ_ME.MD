Group Name : Real Brats

Group Members : Loh Zheung Yik 	A17CS0080
                Muhd. Haziq Bin Amir 	A17CS0117
                Muhd. Hakim Bin MD Hambali 	A17CS0115
                Muhd. Hafizi Bin MD Zulkeflee 	A17CS0114
                Kevin Thien You Heng 	A17CS0067
                
Project Name  : Secondary School Headcount System

Project Description
====================
(FYP) The Secondary School Headcount System is a web-based system that allows secondary school teacher to record the marks (TOV, AR1 and AR2) and targets (ETR) of the students. The term “headcount” in this context refers to student academic performance analysis and does not have any relationship with student attendance. This system also allows the teachers to calculate student targets (OTI1 and OTI2) based on marks and view academic performance analysis. Examples of analysis that can view are student target attainment, grade average over the years, class hour per week against student performance and so on. Meanwhile, admins are the ones who manage the lists of users, examinations, subjects, classes, and students. 

Features included in the assignment demo and code
==================================================
1. Manage admin user accounts (Mengurus akaun)
2. Login
3. Manage examinations
4. Manage subjects
5. Manage classes
6. Manage students

All 6 features involve REST services which is GET, POST, PUT and DELETE requests

Usage Instructions
==================
1. Download and install PostGres https://www.2ndquadrant.com/en/resources/postgresql-installer-2ndquadrant/#DownloadandInstallation
2. Open command prompt as admin
4. Start PostGres service using "net start "PostgreSQL-2ndQ 13"
5. run "cd C:\Program Files\2ndQuadrant\PostgreSQL\13\bin"
6. run "psql.exe -U postgres -d postgres -p 5432" (in my case, my username is postgres), then type in the password specified during installation.
7. run SQL query "Create database headcount;"
8. run GRANT ALL PRIVILEDGES ON DATABASE "headcount" TO postgres
9. Open project in Intellij
10. Build using Shift + F9
11. Open localhost:8080 in web browser

Additional Important Notes
============================
1. Line 4 of src/main/application.properties is to generate database tables during build. If table already exist during build, it will be dropped and recreated. So, this line need to be commented out so that data can persist if the code is build again.
2. Line 2 and 3 of src/main/application.properties need to be set with username and password.
3. All JSP files are located at src/main/webapp/jsp
4. All JS files are located at src/main/resources/static/js
5. All backend code (classes, controllers and restControllers) are located at src/main/java/com/headcount/headcount


