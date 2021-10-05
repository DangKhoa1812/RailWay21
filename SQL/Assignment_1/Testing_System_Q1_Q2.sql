DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

DROP TABLE IF EXISTS Department;
CREATE TABLE Department(
	 DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
	DepartmentName VARCHAR(250)
);

DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position`(
	 PositionID INT AUTO_INCREMENT PRIMARY KEY,
	 PositionName VARCHAR(250)
);

DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account`(
	 AccountID INT AUTO_INCREMENT PRIMARY KEY,
	 Email VARCHAR(250),
     Username VARCHAR(50),
     Fullname VARCHAR(250),
     DepartmentID INT(10),
     PositionID  INT(10),
     CreateDate DATE
);

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group`(
	 GroupID INT AUTO_INCREMENT PRIMARY KEY,
	 GroupName VARCHAR(50),
     CreatorID INT(10),
     CreateDate DATE
);

DROP TABLE IF EXISTS `GroupAccount`;
CREATE TABLE `GroupAccount`(
	 GroupID INT (10),
     AccountID INT(10),
     JoinDate DATE
);

DROP TABLE IF EXISTS TypeQuestion;
CREATE TABLE TypeQuestion(
	 TypeID INT AUTO_INCREMENT PRIMARY KEY,
     TypeName VARCHAR(250)
);

DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion(
	 CategoryID INT AUTO_INCREMENT PRIMARY KEY,
     CategoryName VARCHAR(250)
);

DROP TABLE IF EXISTS Question;
CREATE TABLE Question(
	 QuestionID INT AUTO_INCREMENT PRIMARY KEY,
	 Content VARCHAR(250),
     CategoryID INT(10),
     TypeID  INT(10),
     CreatorID INT(10),
     CreateDate DATE
);

DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer(
	 AnswerID INT AUTO_INCREMENT PRIMARY KEY,
	 Content VARCHAR(250),
     QuestionID INT(10),
     isCorrect  VARCHAR(50)
);

DROP TABLE IF EXISTS Exam;
CREATE TABLE Exam(
	 ExamID INT AUTO_INCREMENT PRIMARY KEY,
	 `Code` INT(10),
     Title VARCHAR(50),
     CategoryID INT(10),
     Duration INT(10),
     CreatorID  INT(10),
     CreateDate DATE
);

DROP TABLE IF EXISTS  ExamQuestion;
CREATE TABLE TypeQuestion(
	 ExamID INT (10),
     QuestionID INT(10)
);

