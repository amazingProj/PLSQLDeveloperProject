
[General]
Version=1

[Preferences]
Username=
Password=2852
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=EMPLOYEE
Count=10..200

[Record]
Name=ADDRESS
Type=VARCHAR2
Size=100
Data=Address1
Master=

[Record]
Name=PHONE_NUMBER
Type=NUMBER
Size=
Data='05' +  + Sequence(00000000, 1)
Master=

[Record]
Name=SALARY
Type=NUMBER
Size=
Data=Random(7000, 11000)
Master=

[Record]
Name=GENDER
Type=NUMBER
Size=
Data=Random(0, 1)
Master=

[Record]
Name=PERSONID
Type=VARCHAR2
Size=9
Data=Sequence(300000001, 1)
Master=

