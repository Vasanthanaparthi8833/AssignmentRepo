
----TABLES-------------------------------------------------------------------------------

CREATE TABLE UserTable (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    RoleId INT NOT NULL,
    Username VARCHAR(250) NOT NULL,
    Email VARCHAR(250) NOT NULL,
    Password VARCHAR(MAX) NOT NULL
);

CREATE TABLE Courts (
    CourtId INT IDENTITY(1,1) PRIMARY KEY,
    CourtName VARCHAR(250) NOT NULL,
	IsDeleted bit NOT NULL
);

CREATE TABLE Bookings (
    BookingId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    CourtId INT NOT NULL,
    BookingDate DATETIME NOT NULL,
	IsCanceled bit NOT NULL
);

CREATE TABLE Role (
    RoleId INT IDENTITY(1,1) PRIMARY KEY,
    RoleName VARCHAR(250)
);



---------RELATIONS---------------------------------------------------------------------------------------------------


ALTER TABLE UserTable
ADD CONSTRAINT FK_UserTable_Role FOREIGN KEY (RoleId)
REFERENCES Role(RoleId);

ALTER TABLE Bookings
ADD CONSTRAINT FK_Bookings_UserTable FOREIGN KEY (UserId)
REFERENCES UserTable(UserId);

ALTER TABLE Bookings
ADD CONSTRAINT FK_Bookings_Courts FOREIGN KEY (CourtId)
REFERENCES Courts(CourtId);



---------Default Values---------------------------------------------------------------------------------------------------

INSERT INTO Role (RoleName)
VALUES  ('Admin'),('User');