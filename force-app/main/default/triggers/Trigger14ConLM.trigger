trigger Trigger14ConLM on Contact (after insert,after update) 
{
    set<id> stid = new set<id>();
  
    if(trigger.isAfter && (trigger.isinsert || trigger.isupdate))
    {
        for(Contact con : trigger.new)
        {
            if(con.AccountId != null)
            {
                stid.add(con.AccountId);
            }
        }
    }
    List<Account> acctoup = new List<Account>();
    for(Account acc : [SELECT Id, Name FROM Account WHERE Id IN :stid])
    {
        acc.Name = acc.Name;
        acctoup.add(acc);
    }
    update acctoup;
    
    
    
    
    
    
    
   /* 
    * 
    * before insert,before update,
  if(trigger.isbefore && (trigger.isupdate || trigger.isinsert))
    {
        for(Contact co : trigger.new)
        {
            if(co.AccountId != null)
            {
               stid.add(co.AccountId);
            }
        }
    }
    for(id aid :acid)
    {
        List<Account> acolst = [Select id from Account where id =: aid];
        Account ac = new Account();
        ac.Id = aid;
        ac.Description = ''+Date.ToDay();
        update ac;
        
    }
    Date dt = Date.Today();
    for(id accid : acid)
    {
        List<Account> aclst = new list<Account>();
        if(acid != null)
        {
            Account ac = new Account();
            //ac.No_of_Contacts__c = ;
            update ac;
        }
    } 
*/
    
    

}