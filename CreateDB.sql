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
   (1, 'Ассистент')
 , (2, 'Старший преподаватель')
 , (3, 'Доцент')
 , (4, 'Профессор');

INSERT INTO AcademicDegrees
VALUES
   (1, 'К.т.н.')
 , (2, 'К.ф-м.н.')
 , (3, 'Нет степени');

INSERT INTO AcademicTitles
VALUES
   (1, 'Доцент')
 , (2, 'Профессор')
 , (3, 'Нет степени');

INSERT INTO Subjects
VALUES
   (1, 'Алгебра')
 , (2, 'Геометрия')
 , (3, 'Дискретная математика')
 , (4, 'Математика')
 , (5, 'Математический анализ')
 , (6, 'Методы оптимизации')
 , (7, 'Теор. вер. и мат. стат.');

INSERT INTO ResearchWorks
VALUES
   (1, 'Неопределенный интеграл', 2019)
 , (2, 'Двойной, тройной, криволинейный интегралы и элементы теории поля', 2019)
 , (3, 'Моделирование поеречных колебаний жидкости в цистерне с применением модельного эксперимента', 2018)
 , (4, 'Применение метода конечных жлементов для определения статической нагруженности котла железнодорожной цистерны', 2020)
 , (5, 'Методика решений дифференциальных уравнений первого порядка', 2020)
 , (6, 'Оптимизация количества запасных элементов в сложном устройстве', 2019)
 , (7, 'Интегральные ряды Неймана и частный случай - вырожденные ядра', 2015)
 , (8, 'Методика оценки устойчивости оболочки при локальном повышении температуры в очаге пламени', 2015)
 , (9, 'Моделирование пульсирующих режимов динамики свертывания крови', 2014)
 , (10, 'Геометрия пути', 2014)
 , (11, 'Об аналоге задачи Трикоми для уравнения трельего порядка смешанного типа', 2021)
 , (12, 'Классическая задача для нагруженного гиперболо-параболического уравнения второго порядка', 2015)
 , (13, 'Математическая модель динамики поверхности проводящей капли в переменном электромагнитном поле', 2018)
 , (14, 'К вопросу моделирования движения колесной пары', 2019)
 , (15, 'К понятию коэффициента сцепления', 2017)
 , (16, 'Интегрирование функции комплексного переменного', 2017)
 , (17, 'Методы вычисления пределов', 2015)
 , (18, 'Нет НИР', 2021);

INSERT INTO Teachers
VALUES
	(1, 1, 3, 3, 'Елизавета', 'Михайловна', 'Чеснокова')
  , (2, 1, 3, 3, 'Марк', 'Александрович', 'Чижов')
  , (3, 2, 3, 3, 'Адам', 'Владиславович', 'Зыков')
  , (4, 3, 1, 1, 'Виктор', 'Семёнович', 'Иванов')
  , (5, 3, 3, 1, 'Арина', 'Матвеевна', 'Большакова')
  , (6, 3, 2, 3, 'Тимур', 'Алексеевич', 'Ситников')
  , (7, 4, 2, 1, 'Пётр', 'Владимирович', 'Андреев')
  , (8, 4, 3, 2, 'Полина', 'Артёмовна', 'Попова')
  , (9, 2, 3, 3, 'Павел', 'Матвеевич', 'Рыжов')
  , (10, 3, 3, 3, 'Анастасия', 'Денисовна', 'Лукина')
  , (11, 4, 1, 2, 'Максим', 'Владимирович', 'Миронов')
  , (12, 1, 3, 3, 'Иван', 'Тимофеевич', 'Колесников');

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
