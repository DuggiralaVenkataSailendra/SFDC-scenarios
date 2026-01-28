public class Async1Apex {
    @future
    public static void UserRoleUpdate(String userId, String roleName){
        UserRole usrRole = [SELECT Id FROM UserRole
                       WHERE Name =: roleName
                       LIMIT 1];
        User usr = new User(id= userId);
        usr.UserRoleId = usrRole.Id;
        update usr;
    }
 
}