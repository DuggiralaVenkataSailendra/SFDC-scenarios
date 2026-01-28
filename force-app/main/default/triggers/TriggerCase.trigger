trigger TriggerCase on Case (after insert, after update) 
{
    list<id> caseid = new list<id>();
    for(Case c : trigger.new)
    {
        if(c.ContactId != null)
        {
            caseid.add(c.Id);
        } 
    }
    if(!caseid.isempty())
        {
            System.enqueueJob(new AsyncApexCase(caseid));
        }
}