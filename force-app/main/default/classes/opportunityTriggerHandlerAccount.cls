public class opportunityTriggerHandlerAccount 
{
    /*
    public static void afterInsertUpdate(List<Opportunity> opps)
    {
        Set<Id> accountIds = new Set<Id>();
        for (Opportunity opp : opps)
        {
            if (opp.AccountId != null && opp.Amount != null)
            {
                accountIds.add(opp.AccountId);
            }
        }
        if (accountIds.isEmpty())
        {
            return;
        }

        Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, AnnualRevenue FROM Account WHERE Id IN :accountIds]);
        List<Account> accountsToUpdate = new List<Account>();

        for (Opportunity opp : opps)
        {
            if (accMap.containsKey(opp.AccountId)) 
            {
                Account acc = accMap.get(opp.AccountId);
                acc.AnnualRevenue = opp.Amount;
                accountsToUpdate.add(acc);
            }
        }

        if (!accountsToUpdate.isEmpty()) 
        {
            update accountsToUpdate;
        }
    }
    */
}