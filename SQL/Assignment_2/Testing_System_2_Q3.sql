USE TestingSystem3;

INSERT INTO department(DepartmentName) VALUES ('Sale');
INSERT INTO department(DepartmentName) VALUES ('Marketing');
INSERT INTO department(DepartmentName) VALUES ('Develop');
INSERT INTO department(DepartmentName) VALUES ('QA');

INSERT INTO `Position`(PositionName) VALUES('DEV');
INSERT INTO `Position`(PositionName) VALUES('TEST');
INSERT INTO `Position`(PositionName) VALUES('SCRUM_MASTER');
INSERT INTO `Position`(PositionName) VALUES('PM');

INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('nguyendangkhoa181295@gmail.com','khoa1812','Nguyen Dang Khoa',1,2);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('wot123@gmail.com','wot','Nguyen Van A',2,2);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('wot456@gmail.com','wot1','Nguyen Van B',1,3);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('wot789@gmail.com','wot2','Nguyen Thi C',1,2);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('truong@gmail.com','truongln','Luong Ngoc Truong',1,3);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('hoanghuyen123@gmail.com','huyenhtt','Hoang Thi Thanh Huyen',3,1);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('thuyha2512@gmail.com','hatttt1512','Tran Thi Thuy Ha',2,3);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('sangnv126@gmail.com','sangnv','Nguyen Van Sang',1,2);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('hainv@gmail.com','hainv','Nguyen Van Hai',1,3);
INSERT INTO `Account` (Email,Username,FullName,DepartmentID,PositionID)
VALUES ('luongnt@gmail.com','luongnt','Nguyen Xuan Linh',1,2);

UPDATE `Account` SET Username='khoa1995',
					DepartmentID= 3
                    WHERE AccountID=1;
                    

INSERT INTO `Group`(GroupName)
VALUES ('Nhom1');
INSERT INTO `Group`(GroupName)
VALUES ('Nhom2');
INSERT INTO `Group`(GroupName)
VALUES ('Nhom3');
INSERT INTO `Group`(GroupName)
VALUES ('Nhom4');

INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('1','1');
INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('1','2');
INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('1','3');
INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('2','4');
INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('2','5');
INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('2','6');
INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('3','7');
INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('3','8');
INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('4','9');
INSERT INTO GroupAccount(GroupID,AccountID)
VALUES ('4','10');

INSERT INTO TypeQuestion(TypeName)
VALUES ('Essay');
INSERT INTO TypeQuestion(TypeName)
VALUES ('Multiple-Choice');

INSERT INTO CategoryQuestion(CategoryName)
VALUES ('Java');
INSERT INTO CategoryQuestion(CategoryName)
VALUES ('.NET');
INSERT INTO CategoryQuestion(CategoryName)
VALUES ('SQL');
INSERT INTO CategoryQuestion(CategoryName)
VALUES ('Postman');
INSERT INTO CategoryQuestion(CategoryName)
VALUES ('Ruby');

INSERT INTO Question(Content,TypeID,CategoryID,CreatorID)
VALUES ('CauHoiJava',1,1,1);
INSERT INTO Question(Content,TypeID,CategoryID,CreatorID)
VALUES ('CauHoi.NET',1,2,3);
INSERT INTO Question(Content,TypeID,CategoryID,CreatorID)
VALUES ('CauHoiSQL',1,3,4);
INSERT INTO Question(Content,TypeID,CategoryID,CreatorID)
VALUES ('CauHoiPostman',1,3,8);
INSERT INTO Question(Content,TypeID,CategoryID,CreatorID)
VALUES ('CauHoiRuby',1,4,9);

INSERT INTO Answer(Content,QuestionID,isCorrect)
VALUES ('CauTraLoiJava',1,1);
INSERT INTO Answer(Content,QuestionID,isCorrect)
VALUES ('CauTraLoi.Net',2,1);
INSERT INTO Answer(Content,QuestionID,isCorrect)
VALUES ('CauTraLoiSQL',3,1);
INSERT INTO Answer(Content,QuestionID,isCorrect)
VALUES ('CauTraLoiPostman',4,1);
INSERT INTO Answer(Content,QuestionID,isCorrect)
VALUES ('CauTraLoiRuby',5,1);

INSERT INTO Exam(`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (111,'DeThi1Java',1,90,1);
INSERT INTO Exam(`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (222,'DeThi1.Net',2,90,8);
INSERT INTO Exam(`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (333,'DeThi1SQL',3,90,5);
INSERT INTO Exam(`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (444,'DeThi1Postman',4,90,2);
INSERT INTO Exam(`Code`,Title,CategoryID,Duration,CreatorID)
VALUES (555,'DeThi1Ruby',5,90,6);

INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(1,1);
INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(1,3);

INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(2,4);
INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(2,5);

INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(3,1);
INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(3,2);

INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(4,2);
INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(4,5);

INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(5,3);
INSERT INTO ExamQuestion(ExamID,QuestionID)
VALUES(5,5);
