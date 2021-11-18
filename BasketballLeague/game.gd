
[General]
Version=1

[Preferences]
Username=
Password=2658
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
Name=WINNERNAME
Type=VARCHAR2
Size=100
Data=List('Maccabi Palytika Tel Aviv', 'Hapoel Tel Aviv','Hapoel Eylat' , 'Hapoel Holon', 'Bnei Herzliya','Hapoel Be'er Sheva','Hapoel Gilboa Galil', 'Hapoel Haifa','Hapoel Jerusalem','Ironi Nahariya', 'Ironi Nes Ziona', 'Maccabi Haifa' ...)
Master=

[Record]
Name=LOSERNAME
Type=VARCHAR2
Size=100
Data=List('Maccabi Palytika Tel Aviv', 'Hapoel Tel Aviv','Hapoel Eylat' , 'Hapoel Holon', 'Bnei Herzliya','Hapoel Be'er Sheva','Hapoel Gilboa Galil', 'Hapoel Haifa','Hapoel Jerusalem','Ironi Nahariya', 'Ironi Nes Ziona', 'Maccabi Haifa' ...)
Master=

[Record]
Name=GAMEDATE
Type=VARCHAR2
Size=100
Data=Sequence(1,31) +'-'  + Sequence(1,12)+ '-' + '2021'
Master=

[Record]
Name=ARENANAME
Type=VARCHAR2
Size=100
Data=FirstName + LastName
Master=

[Record]
Name=REFREEID
Type=CHAR
Size=9
Data=Sequence(100000001,1)
Master=

