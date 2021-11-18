
[General]
Version=1

[Preferences]
Username=
Password=2731
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=LECTURER
Count=10..20

[Record]
Name=EXPIRIENCE
Type=NUMBER
Size=
Data=Random(0, 25)
Master=

[Record]
Name=PERSONID
Type=NUMBER
Size=
Data=List(select personid from person)
Master=

[Record]
Name=FIRSTNAME
Type=VARCHAR2
Size=
Data=List(select firstname from person)
Master=

[Record]
Name=LASTNAME
Type=VARCHAR2
Size=
Data=List(select lastname from person)
Master=

