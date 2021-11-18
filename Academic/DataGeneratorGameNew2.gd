
[General]
Version=1

[Preferences]
Username=
Password=2426
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=GAME
Count=10..16

[Record]
Name=GAMEDATE
Type=VARCHAR2
Size=100
Data=Random(1, 29) + '/' + Random(1, 12) + '/' + '21'
Master=

[Record]
Name=ARENANAME
Type=VARCHAR2
Size=100
Data='Yad Eliyahu'
Master=

[Record]
Name=WINNERNAME
Type=VARCHAR2
Size=100
Data='Hapoel Holon'
Master=

[Record]
Name=LOSERNAME
Type=VARCHAR2
Size=100
Data='Hapoel Eylat'
Master=

[Record]
Name=PERSONID
Type=VARCHAR2
Size=9
Data='279797997'
Master=

