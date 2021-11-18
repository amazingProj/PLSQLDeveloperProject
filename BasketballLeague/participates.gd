
[General]
Version=1

[Preferences]
Username=
Password=2545
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=PARTICIPATES
Count=10..20

[Record]
Name=GAMEDATE
Type=VARCHAR2
Size=100
Data=Random(1,31) +'-'  + Random(1,12)+ '-' + '2021'
Master=

[Record]
Name=TEAMNAME
Type=VARCHAR2
Size=100
Data=List('Maccabi Palytika Tel Aviv', 'Hapoel Tel Aviv','Hapoel Eylat' , 'Hapoel Holon', 'Bnei Herzliya','Hapoel Be'er Sheva','Hapoel Gilboa Galil', 'Hapoel Haifa','Hapoel Jerusalem','Ironi Nahariya', 'Ironi Nes Ziona', 'Maccabi Haifa' ...)
Master=

