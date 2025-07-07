CREATE DATABASE FTD;

USE FTD;

CREATE TABLE user (
UserID INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender VARCHAR(20),
SignupDate DATE
);

CREATE TABLE DailyActivity (
ActivityID INT PRIMARY KEY,
UserID INT,
ActivityDate DATE,
Steps INT,
CaloriesBurned INT,
WorkoutMinute INT,
FOREIGN KEY (UserID) REFERENCES user(UserID)
);

CREATE TABLE BodyMetrics (
MetricID INT PRIMARY KEY,
MeasureDate DATE,
UserID INT,
WeightKG DECIMAL(5,2),
BMI DECIMAL(4,2),
FOREIGN KEY (UserID) REFERENCES user(UserID)
);

INSERT INTO user 
(UserID, name, age, gender, SignupDate)
VALUES 
(1, "Anuj Gupta", 20, "Male", "1-7-25"),
(2, "Vinay Sachdev", 22,"Male", "2-7-25"),
(3, "Ambika Shinde", 20, "Female", "1-6-25"),
(4, "Vanshika Dave", 21,"Female", "13-7-25"),
(5, "Purav Jha", 23, "Male", "1-5-25"),
(6, "Sambhavi Vashishth", 20, "Female", "6-7-25"),
(7, "Vikrant Thakur", 25, "Male", "13-7-25"),
(8, "Nidhi Pandey", 20, "Female", "13-7-25"),
(9, "Purva Ture", 19, "Female", "13-7-25"),
(10, "Anish Rane", 24, "Male", "11-6-25"),
(11, "Deepak Gupta", 26, "Male", "5-7-25"),
(12, "Sangam Gupta", 19, "Male", "1-7-25"),
(13, "Yash Waghle", 22, "Male", "4-7-25"),
(14, "Deepa Jaiswal", 21,"Female", "21-6-25"),
(15, "Raj Kakade", 25, "Male", "15-7-25"),
(16, "Anjali Kadam", 18, "Female", "1-7-25"),
(17, "Vickey Kaushal", 25, "Male", "15-5-25"),
(18, "Anirudh Gupta", 20, "Male", "22-7-25"),
(19, "Pradyuman Gupta", 27, "Male", "12-5-25"),
(20, "Vikas Chaurasiya", 24, "Male", "1-6-25");

INSERT INTO DailyActivity 
(ActivityID, UserID, ActivityDate, Steps, CaloriesBurned, WorkoutMinute)
VALUES 
(1, 1, '2025-07-01', 8200, 300, 40),
(2, 2, '2025-07-01', 11000, 420, 55),
(3, 3, '2025-07-02', 8700, 330, 45),
(4, 20, '2025-07-02', 9500, 380, 50),
(5, 1, '2025-07-03', 9100, 340, 48),
(6, 2, '2025-07-03', 12300, 470, 62),
(7, 3, '2025-07-04', 8800, 320, 44),
(8, 20, '2025-07-04', 9800, 400, 53),
(9, 11, '2025-07-05', 8500, 310, 43),
(10,12, '2025-07-05', 12000,450, 60),
(11,11, '2025-07-06', 9000, 350, 50),
(12,12, '2025-07-06', 10500,390, 56),
(13,11, '2025-07-07', 8700, 340, 47),
(14,4, '2025-07-07', 11500,430, 58),
(15,5, '2025-07-08', 9200, 360, 51),
(16,6, '2025-07-08', 10200,400, 54),
(17,6, '2025-07-09', 9400, 370, 52),
(18,2, '2025-07-09', 11800,450, 60),
(19,19, '2025-07-10', 8900, 330, 46),
(20,20, '2025-07-10', 10900,410, 55);

INSERT INTO BodyMetrics 
(MetricID, UserID, MeasureDate, WeightKG, BMI)
VALUES 
(1, 1, '2025-07-01', 72.5, 23.4),
(2, 2, '2025-07-01', 58.2, 21.1),
(3, 1, '2025-07-02', 72.4, 23.4),
(4, 5, '2025-07-02', 58.1, 21.0),
(5, 7, '2025-07-03', 72.3, 23.3),
(6, 8, '2025-07-03', 58.0, 21.0),
(7, 9, '2025-07-04', 72.2, 23.3),
(8, 8, '2025-07-04', 57.9, 20.9),
(9, 8, '2025-07-05', 72.1, 23.3),
(10,7, '2025-07-05', 57.8, 20.9),
(11,12, '2025-07-06', 72.0, 23.2),
(12,17, '2025-07-06', 57.7, 20.8),
(13,17, '2025-07-07', 71.9, 23.2),
(14,12, '2025-07-07', 57.6, 20.8),
(15,15, '2025-07-08', 71.8, 23.1),
(16,12, '2025-07-08', 57.5, 20.7),
(17,15, '2025-07-09', 71.7, 23.1),
(18,20, '2025-07-09', 57.4, 20.7),
(19,1, '2025-07-10', 71.6, 23.0),
(20,20, '2025-07-10', 57.3, 20.6);

SELECT * FROM user;
SELECT * FROM DailyActivity;
SELECT * FROM BodyMetrics;

SET SQL_SAFE_UPDATES = 0;

UPDATE user
SET SignupDate = CASE 
    WHEN UserID = 1 THEN '2025-07-01'
    WHEN UserID = 2 THEN '2025-07-02'
    WHEN UserID = 3 THEN '2025-07-03'
    WHEN UserID = 4 THEN '2025-07-04'
    WHEN UserID = 5 THEN '2025-07-05'
    WHEN UserID = 6 THEN '2025-07-06'
    WHEN UserID = 7 THEN '2025-07-07'
    WHEN UserID = 8 THEN '2025-07-08'
    WHEN UserID = 9 THEN '2025-07-09'
    WHEN UserID = 10 THEN '2025-07-10'
    WHEN UserID = 11 THEN '2025-07-11'
    WHEN UserID = 12 THEN '2025-07-12'
    WHEN UserID = 13 THEN '2025-07-13'
    WHEN UserID = 14 THEN '2025-07-14'
    WHEN UserID = 15 THEN '2025-07-15'
    WHEN UserID = 16 THEN '2025-07-16'
    WHEN UserID = 17 THEN '2025-07-17'
    WHEN UserID = 18 THEN '2025-07-18'
    WHEN UserID = 19 THEN '2025-07-19'
    WHEN UserID = 20 THEN '2025-07-20'
    ELSE SignupDate
END;


#AVERAGE STEP OF LAST 30 DAYS
SELECT 
    AVG(Steps) AS AvgStepsLast30Days
FROM 
    DailyActivity
WHERE 
    ActivityDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);


#WEIGHT CHANGE

SELECT 
    UserID,
    MAX(MeasureDate) AS LatestDate,
    MIN(MeasureDate) AS EarliestDate,
    MAX(WeightKG) - MIN(WeightKG) AS WeightChange
FROM 
    BodyMetrics
GROUP BY 
    UserID;
    
    
#TOP 5 ACTIVE USER

SELECT 
    da.UserID, 
    u.name,
    SUM(da.Steps) AS TotalSteps
FROM 
    DailyActivity da
JOIN 
    user u ON da.UserID = u.UserID
GROUP BY 
    da.UserID, u.name
ORDER BY 
    TotalSteps DESC
LIMIT 5;
    


