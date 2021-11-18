
[General]
Version=1

[Preferences]
Username=
Password=2501
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=COURSETEST
Count=10..20

[Record]
Name=GRADE
Type=NUMBER
Size=
Data=Random(50,100)
Master=

[Record]
Name=COURSEDATE
Type=NUMBER
Size=10
Data=Random(1, 31) +'-'+ + Random(1, 12)+'-2021'
Master=

[Record]
Name=COURSECLASS
Type=NUMBER
Size=
Data=Random(10, 50)
Master=

[Record]
Name=COURSEID
Type=NUMBER
Size=
Data=List(select courseid from course)
Master=

[Record]
Name=PERSONID
Type=NUMBER
Size=
Data=List(select personid from student)
Master=

