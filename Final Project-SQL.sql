SELECT * FROM time_wasters_on_social_media_2


-- Check if there is NULL value in Self_control or Addiction_level
SELECT * FROM time_wasters_on_social_media_2
WHERE `Self Control` IS NULL OR `Addiction Level` IS NULL;


--Add Boolean columns
ALTER TABLE time_wasters_on_social_media_2
ADD Owns_Property_Bool TINYINT(1),
ADD Debt_Bool TINYINT(1);


-- Set Boolean value
UPDATE time_wasters_on_social_media_2
SET Owns_Property_Bool = CASE 
        WHEN `Owns Property` = 'TRUE' THEN 1
        WHEN `Owns Property` = 'FALSE' THEN 0
        ELSE NULL
    END,
    Debt_Bool = CASE 
        WHEN Debt = 'TRUE' THEN 1
        WHEN Debt = 'FALSE' THEN 0
        ELSE NULL
    END;

SELECT `Owns Property`, Owns_Property_Bool, Debt, Debt_Bool 
FROM time_wasters_on_social_media_2 LIMIT 10;


--Only Keep the Hour information from Watch Time
ALTER TABLE time_wasters_on_social_media_2 ADD Watch_Hour INT;

UPDATE time_wasters_on_social_media_2
SET Watch_Hour = HOUR(STR_TO_DATE(`Watch Time`, '%h:%i %p'));

SELECT Watch_Hour, `Watch Time` 
FROM time_wasters_on_social_media_2 LIMIT 10;


--Descrption and general idea of higher addiction level feature
SELECT Count(UserID) AS User_Count, `Self Control`, `Addiction Level`,
Avg(Age), Avg(Income), Sum(Owns_Property_Bool) AS NoOfProperty, Sum(Debt_Bool) AS NoOfDebt,
Avg(`Total Time Spent`), Avg(`Number of Sessions`), Avg(`Video Length`), Avg(Engagement), Avg(`Time Spent On Video`), Avg(`Number of Videos Watched`), Avg(`Scroll Rate`), Avg(ProductivityLoss), Avg(Satisfaction), Avg(`Importance Score`), 
Avg(`Importance Score`) AS Avg_Importance, Avg(ProductivityLoss) AS Avg_Productivity, Avg(Satisfaction) AS Avg_Satisfaction
FROM time_wasters_on_social_media_2
GROUP BY `Addiction Level` ORDER BY `Addiction Level` DESC


-- Genders, Income
SELECT Avg(`Addiction Level`) AS Avg_Addiction_level, Avg(`Self Control`) AS Avg_Self_control,
Count(UserID) AS User_Count, Gender, Avg(Income),
Avg(`Importance Score`) AS Avg_Importance, Avg(ProductivityLoss) AS Avg_Productivity, Avg(Satisfaction) AS Avg_Satisfaction
FROM time_wasters_on_social_media_2
GROUP BY Gender ORDER BY Avg_Addiction_level DESC


-- Spent Time and Videos
SELECT Avg(`Addiction Level`) AS Avg_Addiction_level, Avg(`Self Control`) AS Avg_Self_control,
Count(UserID) AS User_Count, Watch_Hour, 
Avg(`Importance Score`) AS Avg_Importance, Avg(ProductivityLoss) AS Avg_Productivity, Avg(Satisfaction) AS Avg_Satisfaction,
Avg(`Total Time Spent`), Avg(`Number of Sessions`), Avg(`Video Length`), Avg(Engagement), 
Avg(`Time Spent On Video`), Avg(`Number of Videos Watched`), Avg(`Scroll Rate`)
FROM time_wasters_on_social_media_2
GROUP BY Watch_Hour ORDER BY Avg_Addiction_level DESC


-- Devices, OS and ConnectionType
SELECT Avg(`Addiction Level`) AS Avg_Addiction_level, Avg(`Self Control`) AS Avg_Self_control,
Count(UserID) AS User_Count, DeviceType, OS, ConnectionType,
Avg(`Importance Score`) AS Avg_Importance,
Avg(ProductivityLoss) AS Avg_Productivity,
Avg(Satisfaction) AS Avg_Satisfaction
FROM time_wasters_on_social_media_2
GROUP BY DeviceType, OS, ConnectionType ORDER BY Avg_Addiction_level DESC


SELECT DeviceType, OS, ConnectionType, COUNT(UserID) AS User_Count
FROM time_wasters_on_social_media_2
GROUP BY DeviceType, OS, ConnectionType
ORDER BY User_Count ASC;


-- The average of Ordinal data (Trend)
SELECT AVG(`Addiction Level`) AS Avg_Addiction, 
       AVG(`Importance Score`) AS Avg_Importance,
       AVG(`ProductivityLoss`) AS Avg_Productivity,
       AVG(Satisfaction) AS Avg_Satisfaction,
       AVG(`Self Control`) AS Avg_Self_Control
FROM time_wasters_on_social_media_2;


-- Location
SELECT Avg(`Addiction Level`) AS Avg_Addiction_level, Avg(`Self Control`) AS Avg_Self_control,
Count(UserID) AS User_Count, Location,
Avg(`Importance Score`) AS Avg_Importance,
Avg(ProductivityLoss) AS Avg_Productivity,
Avg(Satisfaction) AS Avg_Satisfaction
FROM time_wasters_on_social_media_2
GROUP BY Location ORDER BY Avg_Addiction_level DESC


-- Count the user in differenct locations and platforms
SELECT Location, Platform, COUNT(UserID) AS User_Count
FROM time_wasters_on_social_media_2
GROUP BY Location, Platform
ORDER BY Location, User_Count DESC;


-- Location, Demographics
SELECT Avg(`Addiction Level`) AS Avg_Addiction_level,
Count(UserID) AS User_Count, Location, Demographics
FROM time_wasters_on_social_media_2
GROUP BY Location, Demographics ORDER BY Avg_Addiction_level DESC


-- Video Cate and watch reason
SELECT AVG(`Addiction Level`) AS Avg_Addiction, `Video Category`, `Watch Reason`
FROM time_wasters_on_social_media_2
GROUP BY `Video Category`, `Watch Reason`
ORDER BY Avg_Addiction DESC;


-- Activity and watch reason
SELECT AVG(`Addiction Level`) AS Avg_Addiction, `CurrentActivity`, `Watch Reason`
FROM time_wasters_on_social_media_2
GROUP BY `CurrentActivity`, `Watch Reason`
ORDER BY Avg_Addiction DESC;


