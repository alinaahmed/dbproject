# ASP.NET CORE with MySQL started project with some boilerplate code.
Simply clone this repository and execute 'dotnet restore; dotnet build; dotnet watch run' from the root directory of this project.
This needs .NET CORE SDK 2.1 and not .NET CORE SDK 2.0.
Look at the appsettings.json file to find the assumed MySQL credentials.
Log into MySQL as the root user and execute the following statements:
    drop user aspnet;
    drop schema aspnet;
    create schema aspnetdb;
    create user aspnet identified by 'aspnet-pwd';
    grant all on aspnetdb.* to aspnet;
    flush privileges;
    exit;
    
then go back to the project root and execute 'dotnet ef database update' to generate the tables into the MySQL database.

The Project has been configured with the required security middleware for XSS, XSRF, CSP, Secure Headers, Authentication and Authorization.

This repo is intended only for students taking the Database Systems course this semester.
