--�������� ���������� ��� ���� ��� ���������� ������� �� ������������ ���.
SELECT FirstName
	 , MiddleName
	 , LastName
	 , ResearchWorks.[Name]
	 , ResearchWorks.[Year]
FROM Teachers_ResearchWorks
INNER JOIN Teachers
ON Teachers_ResearchWorks.ID_Teacher = Teachers.ID
INNER JOIN ResearchWorks
ON Teachers_ResearchWorks.ID_ResearchWork = ResearchWorks.ID
WHERE ResearchWorks.[Year] LIKE 2019;