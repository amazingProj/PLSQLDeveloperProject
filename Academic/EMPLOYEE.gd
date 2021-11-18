
[General]
Version=1

[Preferences]
Username=
Password=2654
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=EMPLOYEE
Count=10

[Record]
Name=EMPLYEE_ID
Type=NUMBER
Size=10
Data=Sequence(1000,7)
Master=

[Record]
Name=FIRST_NAME
Type=CHAR
Size=20
Data=FirstName
Master=

[Record]
Name=LAST_NAME
Type=CHAR
Size=20
Data=LastName
Master=

[Record]
Name=ADDRESS
Type=CHAR
Size=100
Data=Address1
Master=

[Record]
Name=PHONE_NUMBER
Type=CHAR
Size=11
Data='05'+[9]+'-'+ + Random(1111111,9999999)
Master=

[Record]
Name=SALARY
Type=NUMBER
Size=5
Data=Random(4000,10000)
Master=

