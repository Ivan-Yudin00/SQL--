CREATE DATABASE Department;

CREATE TABLE Teachers
(
	ID INTEGER PRIMARY KEY
  , ID_Post INTEGER NOT NULL FOREIGN KEY REFERENCES [Posts](ID)
  , ID_AcademicDegree INTEGER NOT NULL FOREIGN KEY REFERENCES AcademicDegrees(ID)
  , ID_AcademicTitle INTEGER NOT NULL FOREIGN KEY REFERENCES AcademicTitles(ID)
  , FirstName NVARCHAR(30) NOT NULL
  , MiddleName NVARCHAR(30) NOT NULL
  , LastName NVARCHAR(30) NOT NULL
);

CREATE TABLE Posts
(
	ID INTEGER PRIMARY KEY
  , [Name] NVARCHAR(30) UNIQUE
);

CREATE TABLE AcademicDegrees
(
	ID INTEGER PRIMARY KEY
  , [Name] NVARCHAR(30) UNIQUE
);

CREATE TABLE AcademicTitles
(
	ID INTEGER PRIMARY KEY
  , [Name] NVARCHAR(30) UNIQUE
);

CREATE TABLE Subjects
(
	ID INTEGER PRIMARY KEY
  , [Name] NVARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE ResearchWorks
(
	ID INTEGER PRIMARY KEY
  , [Name] NVARCHAR(200) NOT NULL
  , [Year] INTEGER NOT NULL
);

CREATE TABLE Teachers_Subjects
(
	ID INTEGER PRIMARY KEY
  , ID_Teacher INTEGER NOT NULL FOREIGN KEY REFERENCES [Teachers](ID)
  , ID_Subject INTEGER NOT NULL FOREIGN KEY REFERENCES [Subjects](ID)
);

CREATE TABLE Teachers_ResearchWorks
(
	ID INTEGER PRIMARY KEY
  , ID_Teacher INTEGER NOT NULL FOREIGN KEY REFERENCES [Teachers](ID)
  , ID_ResearchWork INTEGER NOT NULL FOREIGN KEY REFERENCES [ResearchWorks](ID)
);



INSERT INTO Posts
VALUES
   (1, '���������')
 , (2, '������� �������������')
 , (3, '������')
 , (4, '���������');

INSERT INTO AcademicDegrees
VALUES
   (1, '�.�.�.')
 , (2, '�.�-�.�.')
 , (3, '��� �������');

INSERT INTO AcademicTitles
VALUES
   (1, '������')
 , (2, '���������')
 , (3, '��� �������');

INSERT INTO Subjects
VALUES
   (1, '�������')
 , (2, '���������')
 , (3, '���������� ����������')
 , (4, '����������')
 , (5, '�������������� ������')
 , (6, '������ �����������')
 , (7, '����. ���. � ���. ����.');

INSERT INTO ResearchWorks
VALUES
   (1, '�������������� ��������', 2019)
 , (2, '�������, �������, ������������� ��������� � �������� ������ ����', 2019)
 , (3, '������������� ��������� ��������� �������� � �������� � ����������� ���������� ������������', 2018)
 , (4, '���������� ������ �������� ��������� ��� ����������� ����������� ������������� ����� ��������������� ��������', 2020)
 , (5, '�������� ������� ���������������� ��������� ������� �������', 2020)
 , (6, '����������� ���������� �������� ��������� � ������� ����������', 2019)
 , (7, '������������ ���� ������� � ������� ������ - ����������� ����', 2015)
 , (8, '�������� ������ ������������ �������� ��� ��������� ��������� ����������� � ����� �������', 2015)
 , (9, '������������� ������������ ������� �������� ����������� �����', 2014)
 , (10, '��������� ����', 2014)
 , (11, '�� ������� ������ ������� ��� ��������� �������� ������� ���������� ����', 2021)
 , (12, '������������ ������ ��� ������������ ���������-��������������� ��������� ������� �������', 2015)
 , (13, '�������������� ������ �������� ����������� ���������� ����� � ���������� ���������������� ����', 2018)
 , (14, '� ������� ������������� �������� �������� ����', 2019)
 , (15, '� ������� ������������ ���������', 2017)
 , (16, '�������������� ������� ������������ �����������', 2017)
 , (17, '������ ���������� ��������', 2015)
 , (18, '��� ���', 2021);

INSERT INTO Teachers
VALUES
	(1, 1, 3, 3, '���������', '����������', '���������')
  , (2, 1, 3, 3, '����', '�������������', '�����')
  , (3, 2, 3, 3, '����', '�������������', '�����')
  , (4, 3, 1, 1, '������', '��������', '������')
  , (5, 3, 3, 1, '�����', '���������', '����������')
  , (6, 3, 2, 3, '�����', '����������', '��������')
  , (7, 4, 2, 1, 'ϸ��', '������������', '�������')
  , (8, 4, 3, 2, '������', '��������', '������')
  , (9, 2, 3, 3, '�����', '���������', '�����')
  , (10, 3, 3, 3, '���������', '���������', '������')
  , (11, 4, 1, 2, '������', '������������', '�������')
  , (12, 1, 3, 3, '����', '����������', '����������');

INSERT INTO Teachers_Subjects
VALUES
	(1, 1, 1)
  , (2, 2, 4)
  , (3, 3, 7)
  , (4, 4, 5)
  , (5, 5, 6)
  , (6, 6, 3)
  , (7, 7, 2)
  , (8, 8, 6)
  , (9, 9, 1)
  , (10, 10, 5)
  , (11, 11, 4)
  , (12, 12, 2);

INSERT INTO Teachers_ResearchWorks
VALUES
	(1, 1, 18)
  , (2, 2, 18)
  , (3, 3, 1)
  , (4, 4, 2)
  , (5, 4, 3)
  , (6, 5, 4)
  , (7, 6, 5)
  , (8, 6, 6)
  , (9, 7, 7)
  , (10, 7, 8)
  , (11, 7, 9)
  , (12, 8, 10)
  , (13, 8, 11)
  , (14, 8, 12)
  , (15, 9, 13)
  , (16, 10, 14)
  , (17, 10, 15)
  , (18, 11, 16)
  , (19, 11, 17)
  , (20, 12, 18);
