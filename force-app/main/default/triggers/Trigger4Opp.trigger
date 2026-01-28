trigger Trigger4Opp on Opportunity (before insert) 
{
    if(trigger.isbefore && trigger.isinsert)
    {
        for(Opportunity op:trigger.new)
        {
            if(op.Amount>1000000)
            {
                op.StageName= 'Closed won';
            }
        }
    }
}