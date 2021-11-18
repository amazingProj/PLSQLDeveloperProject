
[General]
Version=1

[Preferences]
Username=
Password=2059
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=CLIENT
Count=10..20

[Record]
Name=CLIENT_ID
Type=VARCHAR2
Size=9
Data=Sequence(100000000,1)
Master=

[Record]
Name=ADDRESS
Type=VARCHAR2
Size=100
Data=Address1
Master=

[Record]
Name=CLIENT_NAME
Type=VARCHAR2
Size=100
Data=LastName + FirstName
Master=

[Record]
Name=PERSONID
Type=VARCHAR2
Size=9
Data=Sequence(100000000, 1)
Master=

