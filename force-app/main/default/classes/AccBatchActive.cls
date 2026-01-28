global class AccBatchActive implements database.batchable<sObject>
{
    global database.queryLocator start(database.BatchableContext dbc){
        String qry ='SELECT Id, LastModifiedDate, Name FROM Account where LastModifiedDate != Last_N_Days:60';
        return Database.getQueryLocator(qry);
    }
    global void execute(DataBase.BatchableContext dbc,list<Account> Accqry){
        list<Account> aac = new List<Account>();
        for(Account aco : Accqry){
            aco.Active__C = 'Yes';
            aac.add(aco);
        }
        update aac;
    }
    global void finish(Database.BatchableContext dbc){
        AsyncApexJob JobDetails = [Select Id,Status,TotalJobItems,JobItemsProcessed,NumberOfErrors,CreatedBy.Email
                                  From AsyncApexJob
                                  Where id =: dbc.getJobId()];
    }

}