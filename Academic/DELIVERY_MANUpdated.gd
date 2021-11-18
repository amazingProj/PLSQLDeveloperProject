
[General]
Version=1

[Preferences]
Username=
Password=2188
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=DELIVERY_MAN
Count=10..20

[Record]
Name=VEHICLE
Type=NUMBER
Size=
Data=Random(1, 100)
Master=

[Record]
Name=PERSONID
Type=VARCHAR2
Size=9
Data=Sequence(110000000,1)
Master=

