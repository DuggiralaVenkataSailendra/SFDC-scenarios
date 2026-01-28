/*
Create a Batch Job to Update the Case Record's Status, Priority and Subject for All records 
by dividing them to the various batches of size 200. And then Track the Status of the Batch Class.
*/


global class CaseBatchUpdate implements database.batchable<sObject>
{
    global database.queryLocator start(database.BatchableContext dbc){
        String qry ='SELECT Id, Status, Priority, Subject FROM Case';
        return Database.getQueryLocator(qry);
    }
    global void execute(DataBase.BatchableContext dbc,list<Case> Caseqry){
        list<Case> cs = new List<Case>();
        for(Case ca : Caseqry){
            ca.Status = 'New';
            ca.Priority = 'High';
            ca.Subject = 'Case Sub Update';
            cs.add(ca);
        }
        update cs;
    }
    global void finish(Database.BatchableContext dbc){}

}