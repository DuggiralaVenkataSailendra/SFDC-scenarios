trigger Trigger6Con on Contact (before insert, before update) 
{
    if(trigger.isbefore &&( trigger.isinsert || trigger.isupdate))
    {
        
        for(Contact co : trigger.new)
        {
            if(co.Email == '' || co.Email ==null)
            {
                co.addError('Email required');
            }
            if(co.MobilePhone == '' || co.MobilePhone ==null)
            {
                co.addError('Mobile required');
            }
        }
        for(Contact con : trigger.new)
        {
            if(con.AccountId == null)
            {
                con.addError('Account Name should not be blank');
            }
        }
        
        
    }
    if(trigger.isbefore && trigger.isinsert)
    {
        for(Contact co : trigger.new)
        {
            if(co.LeadSource == 'Web')
            {
                if(co.MailingCountry == null || co.MailingPostalCode == null || co.MailingState == null || co.MailingStreet == null)
                {
                    //co.MailingAddress = co.MailingCity;
                    co.addError('MailingAddress is Required');
                }
                if(co.MailingCity == null )
                {
                    co.addError('MailingCity is Required');
                }
            }
        }
    }
    
}

/*
trigger triggerCont on Contact (after insert, after update, after delete, after undelete)
{
    Set<id> lstids = new set<id>();
    if(trigger.isinsert || trigger.isupdate || trigger.isundelete)
    {
        for(Contact co : trigger.new)
        {
            if(co.AccountId != null)
            {
                lstids.add(co.AccountId);
            }
            
        }
    }
    
    if(trigger.isdelete)
    {
        for(Contact con : trigger.old)
        {
            if(con.AccountId != null)
            {
                lstids.add(con.AccountId);
            }
        }
         
        Map<Id, Account> accMap = new Map<Id, Account>( [SELECT Id, Active__c FROM Account WHERE Id IN :lstids] );

        Account accc = new Account();
         for(Contact conc: trigger.old )
        {
            if(conc.AccountId != null && accc.Active__c == 'No')
            {
                conc.addError('Account should be Active');
            }
        }
    }
    list<Account> upaclst = new list<Account>();
    for(id accid : lstids)
    {
        list<Contact> colst = [Select id from Contact where AccountId =: accid];
        Account aco = new Account();
        aco.Id = accid;
        aco.No_of_Contacts__c= colst.size();
        upaclst.add(aco);
    }
    update upaclst;
    
}*/