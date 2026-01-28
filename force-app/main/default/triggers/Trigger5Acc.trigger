trigger Trigger5Acc on Account (before insert) 
{
    if(trigger.isbefore && trigger.isinsert)
    {
        for(Account acc : trigger.new)
        {
            if(acc.Industry == '' ||acc.Industry == null)
            {
                acc.addError('Industry is required');
            }
            if(acc.Rating == '' ||acc.Rating == null)
            {
                acc.addError('Rating is required');
            }
            if(acc.Fax == '' ||acc.Fax == null)
            {
                acc.addError('Fax is required');
            }
        }
    }

}