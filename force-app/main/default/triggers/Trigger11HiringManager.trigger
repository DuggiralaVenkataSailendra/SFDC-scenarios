trigger Trigger11HiringManager on Hiring_manager__c (before insert, before update)
{
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
    {
        for(Hiring_manager__c hmc : trigger.new)
        {
            if(hmc.Location__c == null)
            {
                hmc.addError('Location is required');
            }
        }
    }
}