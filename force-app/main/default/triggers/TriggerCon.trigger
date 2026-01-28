trigger TriggerCon on Contact (before insert,before update, before delete,after insert,After update, after delete) {
 /*   if(trigger.isBefore && trigger.isInsert)
    {
        for(Contact co: trigger.new)
        {
            //Email Should Not null
            if(co.Email == '' || co.Email == null)
            {
                co.addError('Email required');
            }
        }
    }
    
    if(trigger.isBefore && trigger.isUpdate)
    {
        for(contact con : trigger.new)
        {
            //email mot same
            Contact oldCon = trigger.Oldmap.get(con.Id);
            if(con.Email == oldCon.Email)
            {
                con.addError('Enter new Email ');
            }
            if(con.Email == '' || con.Email == null)
            {
                con.addError('Email required');
            }
        }
    }
    */
    
}