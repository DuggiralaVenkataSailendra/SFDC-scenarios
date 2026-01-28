Global class AsyncApexCase Implements Queueable 
{
    public List<id> caseid;
    public AsyncApexCase(list<id> ids)
    {
        this.caseid = ids;
        
    }
    String qry = 'SELECT Id, CaseNumber, Status, Priority, ContactId FROM Case where ContactId != null';
    Global void execute(QueueableContext qc)
    {
        List<Case> c =  new List<Case>();
        For(Case cs : c)
        {
            if(cs.ContactId != null)
            {
                
            }
        }
        
    }

}
/*
public class CaseEscalationQueueable implements Queueable, Database.AllowsCallouts {

    private List<Id> caseIds;

    public CaseEscalationQueueable(List<Id> ids) {
        this.caseIds = ids;
    }

    public void execute(QueueableContext qc) {

        // 1. Query the Cases passed from trigger
        List<Case> incomingCases = [
            SELECT Id, ContactId, Status, Priority
            FROM Case
            WHERE Id IN :caseIds
        ];

        // 2. Store CaseId → ContactId
        Set<Id> contactIds = new Set<Id>();
        for (Case c : incomingCases) {
            if (c.ContactId != null) {
                contactIds.add(c.ContactId);
            }
        }

        if (contactIds.isEmpty()) return;

        // 3. Query ALL open Cases for those Contacts
        List<Case> openCases = [
            SELECT Id, ContactId, Status
            FROM Case
            WHERE ContactId IN :contactIds
            AND Status != 'Closed'
        ];

        // 4. Count open Cases per Contact
        Map<Id, Integer> contactToOpenCaseCount = new Map<Id, Integer>();

        for (Case c : openCases) {
            if (!contactToOpenCaseCount.containsKey(c.ContactId)) {
                contactToOpenCaseCount.put(c.ContactId, 0);
            }
            contactToOpenCaseCount.put(c.ContactId, contactToOpenCaseCount.get(c.ContactId) + 1);
        }

        // 5. Prepare Cases to update
        List<Case> casesToUpdate = new List<Case>();

        for (Case newCase : incomingCases) {
            Integer count = contactToOpenCaseCount.get(newCase.ContactId);

            // Condition: More than 3 open cases
            if (count != null && count > 3) {
                newCase.Priority = 'High';
                newCase.Status = 'Escalated';
                casesToUpdate.add(newCase);
            }
        }

        // 6. Final update
        if (!casesToUpdate.isEmpty()) {
            update casesToUpdate;
        }
    }
}

*/