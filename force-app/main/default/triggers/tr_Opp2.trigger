trigger tr_Opp2 on Opportunity (after update) {
    if(trigger.isafter && trigger.isUpdate){
        tr_Opp2Handler.handleAfterUpdate(
            Trigger.new,
            Trigger.oldMap
        );
    }


}