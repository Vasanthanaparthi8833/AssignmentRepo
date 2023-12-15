# BookingTennis

This project is a Tennis Court Booking API consisting of the following functionalities:

1. User login and signup
2. Tennis Courts: To list, create, update, and delete tennis court information
3. Bookings: To allow users to make, view, update, and cancel court bookings.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
- [Usage](#usage)

## Introduction

BookingTennis is a Tennis Court Booking API created using ASP.NET Core Web API 6.0. The architecture follows the onion architecture, known for its multi-layered structure, particularly beneficial for security. The project uses Entity Framework as the ORM for all database operations, and Dependency Injection is implemented to adhere to SOLID principles.

      ### Features:
      
      1. **User Authentication and Authorization:**
         - Users are categorized into two roles: admin and user.
         - Admins have additional privileges, such as adding tennis courts and managing court-related data.
         - Users can access functionalities related to tennis court bookings.
      
      2. **Tennis Courts:**
         - List: All users can view the list of tennis courts.
         - Create, Edit, and Delete: Only admins can perform these operations on tennis court information.
      
      3. **Bookings:**
         - Make, View, Update, and Cancel: All users can access these functionalities.
         - Users can book a tennis court for a specific day, provided the court is available.

## Getting Started

To set up the project, follow these steps:

      ### 1. Database Setup
      
      Download the updated SQL queries file from the repository. The file is divided into three parts:
      
      - Part 1: Queries to generate all the required tables.
      - Part 2: Queries to establish relations between the tables.
      - Part 3: Queries to insert default values.
      
      (NOTE:Ensure to add a default user to the database using queries. Make this user an admin by assigning the role ID as 1. Note that there's no functionality to add an admin using the API for security reasons.)
      
      ### 2. Project Setup
      
      After setting up the database, download the main project file and open it in Visual Studio:
      
      1. Navigate to `appsettings.json` (BookingTennis => BookingTennis.api => appsettings.json).
      2. In this file, configure your `DefaultConnection` string under the `ConnectionStrings` property.
      
      ### 3. Scaffold Database
      
      After configuring the connection string, open the Package Manager Console and set the default project as `Domain Services/BookingTennis.Repository`. 
      
      Run the following scaffold query:
      Scaffold-DbContext "Server=*YOURSERVER*;Database=*DBNAME*;MultipleActiveResultSets=true;" Microsoft.EntityFrameworkCore.SQLServer -OutputDir Models -Force
      
      (NOTE: Replace `*YOURSERVER*` and `*DBNAME*` with your actual server and database names. Feel free to make any adjustments or provide more specific instructions based on your project's structure.)

## Usage

After setting up the database and project, follow these steps to explore the functionalities:

    1. Run the project by setting `BookingTennis.api` as the startup project. The default view is Swagger UI, but you can use other API testing tools like Postman.
    
    2. Sign Up:
       - Use an API testing tool (e.g., Postman) to create an account by sending a POST request to the `/api/Users/registe` endpoint.
       - Provide the required values in JSON format.
    
    3. Login:
       - After signing up, send a POST request to the `/api/Users/login` endpoint with your credentials.
       - The API will return a JWT token; make sure to store this token as it is required for consecutive requests.
    
    4. Explore Functionalities:
       - Use the obtained JWT token to access other functionalities like bookings and tennis courts.
       - Explore the API endpoints for creating, updating, and viewing tennis courts and making, updating, and canceling court bookings.
    
    Make sure to refer to the API documentation (Swagger UI or other documentation tools) for a detailed list of available endpoints and their functionalities.
