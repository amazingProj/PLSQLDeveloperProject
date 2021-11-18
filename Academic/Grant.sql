alter session set "_ORACLE_SCRIPT"=true; --modify to enable grant 
--query
create user AcademicManager identified by 12345678; -- create user
grant select on Team to AcademicManager;
grant insert on Team to AcademicManager;
grant update on Team to AcademicManager;
grant delete on Team to AcademicManager;
grant select on Player to AcademicManager;
grant insert on Player to AcademicManager;
grant update on Player to AcademicManager;
grant delete on Player to AcademicManager;
grant select on Student to AcademicManager;
grant insert on Student to AcademicManager;
grant update on Student to AcademicManager;
grant delete on Student to AcademicManager;
grant create session to AcademicManager; --grant to allow user open 
--session
