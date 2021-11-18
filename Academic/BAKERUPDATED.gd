
[General]
Version=1

[Preferences]
Username=
Password=2694
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=BAKER
Count=100..200

[Record]
Name=BAKER_TYPE
Type=NUMBER
Size=
Data=Random(1, 4)
Master=

[Record]
Name=PERSONID
Type=VARCHAR2
Size=9
Data=Sequence(200000000, 1)
Master=

