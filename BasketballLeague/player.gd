
[General]
Version=1

[Preferences]
Username=
Password=2685
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=PLAYER
Count=250..400

[Record]
Name=PLAYERID
Type=CHAR
Size=9
Data=Sequence(200000000,1)
Master=

[Record]
Name=PLAYERNAME
Type=VARCHAR2
Size=100
Data=FirstName + LastName
Master=

[Record]
Name=POSITION
Type=NUMBER
Size=
Data=Random(1 ,5)
Master=

[Record]
Name=TEAMNAME
Type=VARCHAR2
Size=100
Data=List('Maccabi Palytika Tel Aviv', 'Hapoel Tel Aviv','Hapoel Eylat' , 'Hapoel Holon', 'Bnei Herzliya','Hapoel Be'er Sheva','Hapoel Gilboa Galil', 'Hapoel Haifa','Hapoel Jerusalem','Ironi Nahariya', 'Ironi Nes Ziona', 'Maccabi Haifa' ...)
Master=

