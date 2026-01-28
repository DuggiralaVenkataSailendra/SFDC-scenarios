global class AccIndNul implements database.batchable<sObject>
{
    global database.queryLocator start(database.BatchableContext dbc){
        String qry ='SELECT Id, Name, Industry FROM Account where Industry = null';
        return Database.getQueryLocator(qry);
    }
    global void execute(DataBase.BatchableContext dbc,list<Account> Accqry){
        list<Account> aac = new List<Account>();
        for(Account aco : Accqry){
            aco.Industry= 'Agriculture';
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