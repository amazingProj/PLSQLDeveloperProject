
[General]
Version=1

[Preferences]
Username=
Password=2660
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=CLIENT
Count=10..20

[Record]
Name=CLIENT_ID
Type=NUMBER
Size=
Data=Sequence(1000,7)
Master=

[Record]
Name=ADDRESS
Type=CHAR
Size=20
Data=Address1
Master=

[Record]
Name=CLIENT_NAME
Type=CHAR
Size=20
Data=FirstName
Master=

[Record]
Name=EMPLYEE_ID
Type=NUMBER
Size=
Data=List(select EMPLYEE_ID from Delivery_man)
Master=

