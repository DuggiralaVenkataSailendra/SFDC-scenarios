trigger Triggeropp on Opportunity (before insert, before update)
{
    if(trigger.isbefore && trigger.isinsert)
    {
        date dt = Date.Today().addDays(30);
        for(Opportunity opp : trigger.new)
        {
            opp.CloseDate = dt ;
            opp.Name = opp.Name+ dt;
        }
    } 
    

}