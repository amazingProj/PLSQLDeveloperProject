
[General]
Version=1

[Preferences]
Username=
Password=2951
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=GAME
Count=10..20

[Record]
Name=GAMEDATE
Type=VARCHAR2
Size=100
Data=Random(1, 30) + '/' +  + Random(1, 12) + '/' + '21'
Master=

[Record]
Name=ARENANAME
Type=VARCHAR2
Size=100
Data=List('Yad Eliyahu', 'Malcha Arena', 'Jake Cohen Arena', 'Menora Arena')
Master=

[Record]
Name=WINNERNAME
Type=VARCHAR2
Size=100
Data=List('Maccabi Palytika Tel Aviv', Hapoel Tel Aviv', 'Rishon Lezion', 'Hapoel Holon', 'Hapoel Eylat')
Master=

[Record]
Name=LOSERNAME
Type=VARCHAR2
Size=100
Data=List('Maccabi Palytika Tel Aviv', Hapoel Tel Aviv', 'Rishon Lezion', 'Hapoel Holon', 'Hapoel Eylat')
Master=

[Record]
Name=PERSONID
Type=VARCHAR2
Size=9
Data=List('279797997', '287977979', '287989686')
Master=

