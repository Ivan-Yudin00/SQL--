--Выдавать сводную информацию обо всех работниках кафедры.
SELECT FirstName
	 , MiddleName
	 , LastName
	 , Posts.[Name] AS Post
	 , AcademicDegrees.[Name] AS AcademicDegree
	 , AcademicTitles.[Name] AS AcademicTitle
FROM Teachers
INNER JOIN Posts
ON Teachers.ID_Post = Posts.ID
INNER JOIN AcademicDegrees
ON Teachers.ID_AcademicDegree = AcademicDegrees.ID
INNER JOIN AcademicTitles
ON Teachers.ID_AcademicTitle = AcademicTitles.ID;