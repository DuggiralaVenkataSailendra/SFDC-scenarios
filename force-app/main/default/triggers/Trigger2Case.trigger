trigger Trigger2Case on Case (before insert, before update)
{
    if(trigger.isBefore && (trigger.isInsert || trigger.isupdate))
    {
        for(Case c:trigger.new)
        {
           /* if(c.Origin == 'Email')
            {
                c.Status = 'New';
                c.Priority = 'Medium';
            }*/
            if(c.Priority == 'High')
            {
                if(c.AccountId == null)
                {
                    c.addError('Account Should be relate');
                }
                if(c.ContactId == null)
                {
                    c.addError('Contact should be relate');
                }
            }
            
        }
    }

}