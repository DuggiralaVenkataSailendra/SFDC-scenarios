public without sharing class tr_Opp2Handler {

    public static void handleAfterUpdate(
        List<Opportunity> newOpps,
        Map<Id, Opportunity> oldOppMap
    ) {

        List<Task> tasksToInsert = new List<Task>();

        for (Opportunity newOpp : newOpps) {

            Opportunity oldOpp = oldOppMap.get(newOpp.Id);

            if (
                newOpp.StageName == 'Closed Won' &&
                oldOpp.StageName != 'Closed Won'
            ) {
                Task followUpTask = new Task(
                    Subject = 'Send Thank You Email',
                    ActivityDate = Date.today().addDays(2),
                    OwnerId = newOpp.OwnerId,
                    WhatId = newOpp.Id,
                    Status = 'Not Started'
                );

                tasksToInsert.add(followUpTask);
            }
        }

        if (!tasksToInsert.isEmpty()) {
            insert tasksToInsert;
        }
    }
}