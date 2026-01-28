trigger tr_Opp1 on Opportunity (after insert) {
    if (Trigger.isBefore && Trigger.isInsert) {
        for(Opportunity op:trigger.new){
            if(op.Type == null){
                op.StageName= 'Closed won';
            }
        }

    }
}