
[General]
Version=1

[Preferences]
Username=
Password=2501
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=DELIVERY_MAN
Count=6

[Record]
Name=VEHICLE
Type=CHAR
Size=20
Data=List('car', 'motor_cycle')
Master=

[Record]
Name=EMPLYEE_ID
Type=NUMBER
Size=
Data=List(select EMPLYEE_ID 
=    from Employee 
=    where EMPLYEE_ID not in (select EMPLYEE_ID from Baker ))
Master=

