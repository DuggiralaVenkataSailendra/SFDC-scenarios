trigger Trigger7Lead on Lead (before insert, before update)
{
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
    {
        for(Lead l:trigger.new)
        {
            if(l.Industry == 'Banking')
            {
                if(l.Phone == null)
                {
                    l.addError('Phone is required field');
                }
                if(l.Email == null)
                {
                    l.addError('Email is required');
                }
            }
        }
    }

}