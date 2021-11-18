
[General]
Version=1

[Preferences]
Username=
Password=2536
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=PLAYER
Count=10..20

[Record]
Name=POSITION
Type=NUMBER
Size=
Data=Random(1, 5)
Master=

[Record]
Name=PERSONID
Type=VARCHAR2
Size=9
Data=Sequence(200000020, 1)
Master=

[Record]
Name=TEAMNAME
Type=VARCHAR2
Size=100
Data='Maccabi Palytika Tel Aviv'
Master=

