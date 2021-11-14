--Выдавать всю информацию о преподавателях и их дисциплинах, учитывая должность.
SELECT FirstName
	 , MiddleName
	 , LastName
	 , Posts.[Name] AS Post
	 , AcademicDegrees.[Name] AS AcademicDegree
	 , AcademicTitles.[Name] AS AcademicTitle
	 , Subjects.[Name]
FROM Teachers_Subjects
INNER JOIN Teachers
ON Teachers_Subjects.ID_Teacher = Teachers.ID
INNER JOIN Subjects
ON Teachers_Subjects.ID_Subject = Subjects.ID
INNER JOIN Posts
ON Teachers.ID_Post = Posts.ID
INNER JOIN AcademicDegrees
ON Teachers.ID_AcademicDegree = AcademicDegrees.ID
INNER JOIN AcademicTitles
ON Teachers.ID_AcademicTitle = AcademicTitles.ID
WHERE Posts.[Name] LIKE 'Доцент';