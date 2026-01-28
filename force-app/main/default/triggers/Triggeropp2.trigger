trigger Triggeropp2 on Opportunity (before insert, before update) 
{
    if(trigger.isbefore && trigger.isupdate)
    {
        date dt = Date.Today().addDays(30);
        for(Opportunity opp : trigger.new)
        {
            //Opportunity oldopp = trigger.oldmap.get(opp.Id);
            if(opp.StageName == 'Perception Analysis' || opp.StageName == 'Proposal/Price Quote' ||opp.StageName == 'Negotiation/Review' )
            {
                opp.CloseDate = dt;
                opp.Probability = 75;
            }
            if(opp.StageName == 'Closed Won')
            {
                
                opp.Probability = 100;
                opp.Description = 'Congratulations' ;
            }
        }
    }

}