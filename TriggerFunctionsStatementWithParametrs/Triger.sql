create or replace trigger PlayerTeamReview
  after delete 
      on Player 
      for each row
   declare
   pragma autonomous_transaction;
        -- local variables
        message_welcome char(20) = 'Welcome!!!';
        message_congratulations char(20) = 'Congratulations';
        message_miss_you char(40) = 'We miss you, Hope good luck!';
        person_first_name char(20);
        person_last_name char(20);

      after insert 
      on Player 
      for each row
   declare
   pragma autonomous_transaction;
        -- local variables
        message_welcome char(20) = 'Welcome!!!';
        message_congratulations char(20) = 'Congratulations';
        message_miss_you char(40) = 'We miss you, Hope good luck!';
        person_first_name char(20);
        person_last_name char(20);
          
   after update
      on Player 
      for each row
   declare
   pragma autonomous_transaction;
        -- local variables
        message_welcome char(20) = 'Welcome!!!';
        message_congratulations char(20) = 'Congratulations';
        message_miss_you char(40) = 'We miss you, Hope good luck!';
        person_first_name char(20);
        person_last_name char(20); 
        after delete
      on Player 
      for each row
   declare
   pragma autonomous_transaction;
        -- local variables
        message_welcome char(20) = 'Welcome!!!';
        message_congratulations char(20) = 'Congratulations';
        message_miss_you char(40) = 'We miss you, Hope good luck!';
        person_first_name char(20);
        person_last_name char(20);
   after grant  
   or each row
   declare
   pragma autonomous_transaction;
        -- local variables
        message_welcome char(20) = 'Welcome!!!';
        message_congratulations char(20) = 'Congratulations';
        message_miss_you char(40) = 'We miss you, Hope good luck!';
        person_first_name char(20);
        person_last_name char(20);
          
                 
 begin
   -- here when it is inserting
   if inserting then
         dbms_output.put_line(message_welcome);
         select p.personid As id, p.teamname As team, (select LastName from Person per where per.personid
         = p.personid) As last_name, (select FirstName from Person per where per.personid
         = p.personid) As first_name, p.position As position, case p.position when 1 then 'Rakaz' 
         when 2 then 'Shooting guard' when 3 then 'Power Forward', when 4 then 'Small forward' when 5 
           then 'Center' end As position_desription
         into
         from Player p
   end if
   -- here when it is updating
   if updating then
   end if    
   -- here when it is deleting
   if deleting then 
         
   end if
   -- here when it is granting 
   if granting then 
         
   end if     
       
        
end PlayerTeamReview
