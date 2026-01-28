trigger Trigger1Lead on Lead (before insert, before Update)
{
    if(trigger.isBefore && trigger.isInsert)
    {
        for(Lead l:trigger.new)
        {
            if(l.LeadSource == 'Web')
            {
                l.Rating = 'Cold';
            }
            else{
                l.Rating =  'Hot';
            }
        }
    }
}