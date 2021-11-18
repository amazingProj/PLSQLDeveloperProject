
[General]
Version=1

[Preferences]
Username=
Password=2059
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=REFREE
Count=10..100

[Record]
Name=REFREEID
Type=CHAR
Size=9
Data=Sequence(100000001,1)
Master=

[Record]
Name=REFREENAME
Type=VARCHAR2
Size=100
Data=FirstName + ' ' +  + LastName
Master=

[Record]
Name=REXPRIENCE
Type=NUMBER
Size=
Data=Random(3,30)
Master=

[Record]
Name=RAGE
Type=NUMBER
Size=
Data=Random(30 , 60)
Master=

