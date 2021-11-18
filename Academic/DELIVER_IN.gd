
[General]
Version=1

[Preferences]
Username=
Password=2413
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=DELIVER_IN
Count=6

[Record]
Name=EMPLYEE_ID
Type=NUMBER
Size=
Data=List(select EMPLYEE_ID from Delivery_man)
Master=

[Record]
Name=SHIFT_ID
Type=NUMBER
Size=
Data=List(select SHIFT_ID from Shift)
Master=

