# Commonwealth Games Management Database Project

## Project Overview
This project is about creating a database system to manage different parts of the Commonwealth Games. The goal is to make everything run more smoothly, provide a better experience for users, and give quick access to information for everyone involved, like athletes, the public, venue managers, and the organizing committee.

![image](https://github.com/user-attachments/assets/503d7089-e738-49f9-904a-9c4a50dcdfc0)

### Main Objectives
- **Athlete Registration**: To make the registration process for athletes secure and easy.
- **Event Scheduling**: To create a detailed event schedule with real-time updates.
- **Ticketing**: To build a secure online database for buying tickets, including seat selection.
- **Venue Management**: To provide real-time information for managing venues and resources.
- **Result Tracking**: To create a system that efficiently records and displays competition results.

### Expected Benefits
- **Better Efficiency**: Streamlined operations by having all data in one place.
- **Improved User Experience**: Easy and quick access to information for everyone.
- **Data-Driven Decisions**: Using data to make better decisions and manage resources.
- **Enhanced Event Experience**: More transparency and accessibility for athletes, spectators, and organizers.

## Database Design

### Relational Schema
We designed the database to organize data properly and reduce redundancy. The database includes tables for players, countries, events, tickets, venues, staff, and more.

### BCNF Conversion
We converted most tables to BCNF (Boyce-Codd Normal Form) to keep the database design clean and reliable. However, some tables with complex keys couldn’t be fully converted to BCNF.

### DDL (Data Definition Language) Scripts
The project includes scripts that create the necessary tables and relationships in the database. These scripts help set up the database structure according to our design.

### Sample Queries
We included various SQL queries to show how the database works. These queries help retrieve information like event details, medal counts, ticket sales, and more.

## Installation and Setup

1. **Database Setup**: 
   - Install PostgreSQL or any other SQL database system.
   - Run the provided DDL scripts to set up the database schema.
   - Insert sample data if you want to test the database.

2. **Running Queries**:
   - Use the provided SQL queries to interact with the database and get information.
   - The queries cover functions like event management, tracking athletes, ticket sales, and more.

3. **Application Integration**:
   - The database can be used in any application that needs to manage Commonwealth Games data.
   - Make sure your application is set up to connect to the database with the correct login details.

## Challenges Faced
- **ER Diagram Updates**: We had some challenges making an accurate ER diagram that fit our project. We had to update it several times to get it right.
- **Data Insertion**: Inserting data was a bit tedious because we kept changing the schema, but we managed to complete it as a team.

## Learning Outcomes
This project helped us learn a lot about designing and managing databases. We got hands-on experience applying what we learned in our DBMS classes to a real-world project, which improved our skills in database development.

## Team Members
- Harshvardhan Vajani (202201413)
- Maahi Shah (202201419)
- Heet Thakkar (202201431)
- Abhishek Abbi (202201438)
- Parth Tolani (202201455)

