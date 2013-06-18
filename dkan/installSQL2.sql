/**********************************************************************/
/* Install.SQL                                                        */
/* Creates a login and makes the user a member of db roles            */
/*                                                                    */
/*           Modifications for SQL AZURE  - ON USER DB                */
/**********************************************************************/


-- Create database user and map to login
-- and add user to the datareader, datawriter, db_owner and securityadmin roles
--

    CREATE USER #dbusername# FOR LOGIN #dbusername#;
    GO
    EXEC sp_addrolemember 'db_owner', #dbusername#;
    EXEC sp_addrolemember 'db_securityadmin', #dbusername#;
    EXEC sp_addrolemember 'db_datareader', #dbusername#;
    EXEC sp_addrolemember 'db_datawriter', #dbusername#;
    GO