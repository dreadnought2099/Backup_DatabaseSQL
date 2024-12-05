
-- University Athletics Database

-- Athletes Table
CREATE TABLE Athletes (
    AthleteID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    ContactInfo VARCHAR(100),
    EnrollmentYear INT,
    GraduationYear INT,
    Major VARCHAR(50),
    TeamID INT
);

INSERT INTO Athletes (FirstName, LastName, DateOfBirth, Gender, ContactInfo, EnrollmentYear, GraduationYear, Major, TeamID)
VALUES 
('John', 'Doe', '2000-03-15', 'Male', 'johndoe@gmail.com', 2018, 2022, 'Computer Science', 1),
('Jane', 'Smith', '1999-06-20', 'Female', 'janesmith@gmail.com', 2017, 2021, 'Biology', 2);

-- Teams Table
CREATE TABLE Teams (
    TeamID INT PRIMARY KEY AUTO_INCREMENT,
    TeamName VARCHAR(50),
    Sport VARCHAR(30),
    CoachName VARCHAR(50),
    EstablishedYear INT
);

INSERT INTO Teams (TeamName, Sport, CoachName, EstablishedYear)
VALUES 
('Tigers', 'Basketball', 'Mike Johnson', 1990),
('Eagles', 'Soccer', 'Sarah Lee', 1985);

-- Events Table
CREATE TABLE Events (
    EventID INT PRIMARY KEY AUTO_INCREMENT,
    EventName VARCHAR(50),
    EventDate DATE,
    Location VARCHAR(100),
    Sport VARCHAR(30)
);

INSERT INTO Events (EventName, EventDate, Location, Sport)
VALUES 
('Intercollegiate Basketball', '2023-11-15', 'Main Arena', 'Basketball'),
('Regional Soccer Championship', '2023-10-10', 'Soccer Field', 'Soccer');

-- EventParticipation Table
CREATE TABLE EventParticipation (
    ParticipationID INT PRIMARY KEY AUTO_INCREMENT,
    AthleteID INT,
    EventID INT,
    PerformanceStats VARCHAR(100),
    Position VARCHAR(50),
    FOREIGN KEY (AthleteID) REFERENCES Athletes(AthleteID),
    FOREIGN KEY (EventID) REFERENCES Events(EventID)
);

INSERT INTO EventParticipation (AthleteID, EventID, PerformanceStats, Position)
VALUES 
(1, 1, 'Scored 20 points', 'Forward'),
(2, 2, '3 Goals', 'Striker');

-- Facilities Table
CREATE TABLE Facilities (
    FacilityID INT PRIMARY KEY AUTO_INCREMENT,
    FacilityName VARCHAR(50),
    Location VARCHAR(100),
    Capacity INT,
    Sport VARCHAR(30)
);

INSERT INTO Facilities (FacilityName, Location, Capacity, Sport)
VALUES 
('Main Arena', 'Campus Center', 5000, 'Basketball'),
('Soccer Field', 'North Campus', 2000, 'Soccer');

-- Staff Table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Role VARCHAR(50),
    TeamID INT,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

INSERT INTO Staff (FirstName, LastName, Role, TeamID)
VALUES 
('Mike', 'Johnson', 'Coach', 1),
('Sarah', 'Lee', 'Coach', 2);

-- Schedule Table
CREATE TABLE Schedule (
    ScheduleID INT PRIMARY KEY AUTO_INCREMENT,
    TeamID INT,
    EventID INT,
    Date DATE,
    Time TIME,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID),
    FOREIGN KEY (EventID) REFERENCES Events(EventID)
);

INSERT INTO Schedule (TeamID, EventID, Date, Time)
VALUES 
(1, 1, '2023-11-15', '18:00:00'),
(2, 2, '2023-10-10', '15:00:00');

-- Achievements Table
CREATE TABLE Achievements (
    AchievementID INT PRIMARY KEY AUTO_INCREMENT,
    AthleteID INT,
    Award VARCHAR(100),
    EventID INT,
    Year INT,
    FOREIGN KEY (AthleteID) REFERENCES Athletes(AthleteID),
    FOREIGN KEY (EventID) REFERENCES Events(EventID)
);

INSERT INTO Achievements (AthleteID, Award, EventID, Year)
VALUES 
(1, 'MVP Award', 1, 2023),
(2, 'Best Striker', 2, 2023);
