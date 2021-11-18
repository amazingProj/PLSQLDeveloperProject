create or replace trigger PlayerTeamReview
  before update on player  
  for each row
declare
  -- local variables here

    message_success char(20) = 'updated player succesfully';
    message_congratulations char(20) = 'Congratulations';
    person_first_name char(20);
    person_last_name char(20);
  before insert on Player 
  for each row 
declare
  -- local variables here
    var integer;
    too_much_players_in_team exception;
    message_welcome char(20) = 'Welcome!!!';
    message_congratulations char(20) = 'Congratulations';
    person_first_name char(20);
    person_last_name char(20);
  before delete on Player  
  for each row
declare
     message_miss_you char(40) = 'We miss you, Hope good luck!';
     person_first_name char(20);
     person_last_name char(20); 
begin
     -- here when it is inserting
   if inserting then
         select Count(*) into var
         from Player p
         where p.teamname = new.teamname;
         
         if var > 15 then
           raise too_much_players_in_team;
         end if;
         dbms_output.put_line(message_welcome);
         select lastName into person_first_name
         from Person p
         where p.personid = new.personid;
         select firstName into person_last_name
         from Person p
         where p.personid = new.personid;
         dbms_output.put_line('inserting this guy');
         dbms_output.put_line('Last name' || person_last_name);
         dbms_output.put_line('First name' || person_first_name);
         dbms_output.put_line('succesfully inserted');
         dbms_output.put_line(message_congratulations);
   end if;
   
   -- here when it is updating
   if updating then
     dbms_output.put_line(message_welcome);
     select lastName into person_first_name
     from Person p
     where p.personid = new.personid;
     select firstName into person_last_name
     from Person p
     where p.personid = new.personid;
     dbms_output.put_line('updating this guy');
     dbms_output.put_line('Last name' || person_last_name);
     dbms_output.put_line('First name' || person_first_name);
     dbms_output.put_line('Please give us a phone call');
     dbms_output.put_line('succesfully updated');
     dbms_output.put_line(message_congratulations);
   end if;   
   -- here when it is deleting
   if deleting then 
         dbms_output.put_line(message_welcome);
         dbms_output.put_line(message_miss_you);
   end if;
    
   dbms_output.put_line('Trigger finished');  
   commit; 
   
   exception 
     when too_much_players_in_team then 
       dbms_output.put_line('too much players in ' || new.teamname); 
end PlayerTeamReview;
/
