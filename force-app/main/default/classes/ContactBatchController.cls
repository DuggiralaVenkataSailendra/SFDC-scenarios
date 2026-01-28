/*
Create a Batch Job to Update the Contact Record's Phone, Email and Fax  
for All records by dividing them to the various batches of size 10. 
And then Track the Status of the Batch Class.
*/

global class ContactBatchController implements Database.Batchable<sObject>
{
    global database.queryLocator start(Database.BatchableContext bc){
        string escapedInput ='sailendra'+'%';
        String ConQry = 'SELECT Id,LastName ,Fax, Phone, Email FROM Contact where Email = null AND Name like\''+escapedInput+'\'';
        return database.getquerylocator(ConQry);    
    }
    global void execute(database.BatchableContext bc, list<Contact> ContactRecordQry ){
        list<Contact> CheckContact =new list<Contact>();
        for(Contact co:ContactRecordQry){
            co.Description = 'Update Contact';
            CheckContact.add(co);  
        }
        update CheckContact;
        
    }  global void finish(database.BatchableContext bc){
        system.debug(bc.getJobId());
        AsyncApexJob jobDetails = [SELECT Id,status,totalJobItems,jobItemsProcessed,NumberOfErrors,CreatedBy.Email
                                   FROM AsyncApexJob
                                   where id =: bc.getJobId()];
    }
  }