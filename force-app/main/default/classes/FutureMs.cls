public class FutureMs {
    @future
    public static void fms(){
        PermissionSet ps =[SELECT Id, Name FROM PermissionSet where Name = 'Test_ps' Limit 1];
        User us = [SELECT Id, Name, IsActive FROM User Limit 1];
        PermissionSetAssignment psa = new PermissionSetAssignment();
        psa.AssigneeId = us.Id;
            psa.PermissionSetId = ps.Id;
        insert psa;
        
       Account ac =[SELECT Id, Name, Type, Description FROM Account where Name = 'Raju' limit 1];
        ac.Description = 'UpdtAcc';
        Update ac;
    }

}