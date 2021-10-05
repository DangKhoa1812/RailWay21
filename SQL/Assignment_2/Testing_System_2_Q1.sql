DROP DATABASE IF EXISTS Testing_System_Assignment_2;
CREATE DATABASE Testing_System_Assignment_2;
USE Testing_System_Assignment_2;

DROP TABLE IF EXISTS Department;
CREATE TABLE Department(
	DepartmentID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	DepartmentName NVARCHAR(60)
);

DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position`(
	 PositionID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	 PositionName ENUM ('PM','TESTER','SCRUM_MASTER','DEV') NOT NULL
);

DROP TABLE IF EXISTS c;
CREATE TABLE `Account`(
	 AccountID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	 Email NVARCHAR(200)  NOT NULL UNIQUE KEY,
     Username NVARCHAR(50)  NOT NULL UNIQUE KEY,
     Fullname NVARCHAR(200),
     DepartmentID INT UNSIGNED CHECK(DepartmentID<10),
     PositionID  INT UNSIGNED,
     Age INT UNSIGNED CHECK (Age>18) CHECK (Age<35),
     CreateDate DATE,
     FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID),
     FOREIGN KEY(PositionID) REFERENCES `Position`(PositionID)
);

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group`(
	 GroupID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	 GroupName NVARCHAR(50),
     CreatorID INT UNSIGNED,
     CreateDate DATETIME DEFAULT NOW(),
     FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID)
);

DROP TABLE IF EXISTS `GroupAccount`;
CREATE TABLE `GroupAccount`(
	 GroupID INT UNSIGNED,
     AccountID INT UNSIGNED,
     JoinDate DATE,
     FOREIGN KEY(GroupID) REFERENCES `Group`(GroupID),
     FOREIGN KEY (AccountID) REFERENCES `Account`(AccountID)
);

DROP TABLE IF EXISTS TypeQuestion;
CREATE TABLE TypeQuestion(
	 TypeID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     TypeName NVARCHAR(200)
);

DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion(
	 CategoryID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     CategoryName NVARCHAR(250)
);

DROP TABLE IF EXISTS Question;
CREATE TABLE Question(
	 QuestionID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	 Content NVARCHAR(250),
     CategoryID INT UNSIGNED,
     TypeID  INT UNSIGNED,
     CreatorID INT UNSIGNED,
     CreateDate DATE,
     FOREIGN KEY (TypeID) REFERENCES TypeQuestion(TypeID),
     FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
     FOREIGN KEY (CreatorID) REFERENCES `Group`(CreatorID)
);

DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer(
	 AnswerID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	 Content NVARCHAR(250),
     QuestionID INT UNSIGNED,
     isCorrect  BIT,
     FOREIGN KEY(QuestionID) REFERENCES Question(QuestionID)
);

DROP TABLE IF EXISTS Exam;
CREATE TABLE Exam(
	 ExamID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	 `Code` INT UNSIGNED,
     Title NVARCHAR(50),
     CategoryID INT UNSIGNED,
     Duration INT UNSIGNED,
     CreatorID  INT UNSIGNED,
     CreateDate DATE,
     FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID)

     
);

DROP TABLE IF EXISTS  ExamQuestion;
CREATE TABLE ExamQuestion(
	 ExamID INT UNSIGNED,
     QuestionID INT UNSIGNED,
     FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID),
     FOREIGN KEY (ExamID) REFERENCES Exam(ExamID)
);

