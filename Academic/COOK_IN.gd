
[General]
Version=1

[Preferences]
Username=
Password=2978
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=COOK_IN
Count=4

[Record]
Name=EMPLYEE_ID
Type=NUMBER
Size=
Data=List(select EMPLYEE_ID from baker)
Master=

[Record]
Name=SHIFT_ID
Type=NUMBER
Size=
Data=List(select SHIFT_ID from Shift)
Master=

