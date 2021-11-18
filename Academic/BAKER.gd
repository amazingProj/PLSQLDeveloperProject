
[General]
Version=1

[Preferences]
Username=
Password=2316
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=BAKER
Count=4

[Record]
Name=BAKER_TYPE
Type=CHAR
Size=20
Data=List('training', 'expert')
Master=

[Record]
Name=EMPLYEE_ID
Type=NUMBER
Size=
Data=List(select EMPLYEE_ID 
=    from Employee     )
=    /*where EMPLYEE_ID not exist (select EMPLYEE_ID 
=                                from Employee natural join Delivery_man))*/
Master=

