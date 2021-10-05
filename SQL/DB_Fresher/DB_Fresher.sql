DROP DATABASE IF EXISTS Fresher;
CREATE DATABASE Fresher;
USE Fresher;

DROP TABLE IF EXISTS Traninee;
CREATE TABLE Traninee(
		TranineeID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
		Full_Name NVARCHAR(50) NOT NULL,
		Birth_Day DATE NOT NULL,
		Gender ENUM('MALE','FEMALE','UNKNOWN') ,
		ET_IQ INT UNSIGNED CHECK(ET_IQ <=20),
		ET_Gmath INT UNSIGNED CHECK(ET_Gmath <=20),
		ET_English INT UNSIGNED CHECK(ET_English <=50),
		Traning_Class VARCHAR(50) ,
		Evaluation_Notes nVARCHAR(250) 
);
INSERT INTO Traninee(Full_Name,Birth_Day,Gender,ET_IQ,ET_Gmath,ET_English,Traning_Class,Evaluation_Notes)
VALUES				('Nguyễn Đăng Khoa','1995-12-18','MALE','20','20','50','VTI001','Đại Học Sài Gòn'),
					('Nguyễn Văn Sang','1995-12-15','MALE','6','8','30','VTI001','Đại Học Bách Khoa Đà Nẵng'),
					('Nguyễn Văn Hải','1995-7-9','MALE','12','18','21','VTI001','Đại Học Bách Khoa Hà Nội'),
					('Lương Ngọc Trường','1990-7-20','MALE','10','10','21','VTI001','Cao Đẳng Địa Chất'),               
					('Hoàng Thị Thu Huyển','1994-11-14','FEMALE','15','16','20','VTI002','Cao Đẳng Sư Phạm'),              
                    ('Trần Thị Thúy Hà','1993-10-25','FEMALE','18','17','31','VTI002','Đại Học Tài Chính Marketing'),   
                    ('Triệu Phúc Hưng','1994-9-20','MALE','17','10','23','VTI002','Đại Học Tài Chính Marketing'),   
					('Trần Thủy Quỳnh','1990-3-2','FEMALE','15','17','19','VTI002','Cao Đẳng Lao Động'),  
					('Phan Thị Kim Vi','1997-2-25','FEMALE','15','12','10','VTI003','Đại Học Ngoại Ngữ'),  
                    ('Bùi Thị Hương','1999-3-7','FEMALE','8','9','5','VTI003','Đại Học Ngoại Ngữ'),
                    ('Trịnh Xuân Dũng','1990-6-8','MALE','15','19','29','VTI003','Học Viện Bưu Chính Viễn Thông Hà Nội'),
                    ('Văn Khôi Nguyên','1995-12-14','MALE','18','15','0','VTI003','Đại Học Sài Gòn');
                    

                    

