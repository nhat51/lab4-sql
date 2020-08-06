CREATE DATABASE QLSV
GO
USE QLSV
DROP DATABASE QLSV
GO
CREATE TABLE Student(
StudentId INT PRIMARY KEY NOT NULL,
StudentName VARCHAR(40) NOT NULL,
StudentAge INT,
Gender VARCHAR(10),
)
GO
DROP TABLE Student
GO 
CREATE TABLE Class(
ClassId INT PRIMARY KEY NOT NULL,
Status VARCHAR(20),
StartDate DATETIME,
EndDate DATETIME
)
GO
DROP TABLE Class
GO
CREATE TABLE ClassDetails(
	CodeStudent INT,
	CodeClass INT,
	Status INT,
	StartTime DATETIME,
	EndTime DATETIME,
	CONSTRAINT FK FOREIGN KEY(CodeStudent) REFERENCES Student(StudentId)
)
GO
DROP TABLE ClassDetails
GO
INSERT INTO Student VALUES (001, N'Nguyễn Quang Nhật', 19,'Nam');
INSERT INTO Student VALUES (002,N'Nguyễn Tiến Đạt', 22, 'Nam');
INSERT INTO Student VALUES (003,N'Hoàng Minh Vương', 27,'Nam');
INSERT INTO Student VALUES (004,N'Nguyễn Thu Hường',19 , N'Nữ');
INSERT INTO Student Values (005,N'Đỗ Thị Ngần', 24,N'Nữ');
GO
SELECT * FROM Student
GO
UPDATE Student 
SET StudentAge = 26 WHERE StudentId = 002;
GO
DELETE FROM Student 
WHERE StudentName = N'Đỗ Thị Ngần';