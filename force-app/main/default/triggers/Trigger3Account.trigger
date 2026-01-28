trigger Trigger3Account on Account (after insert)
{
    if(trigger.isafter && trigger.isInsert)
    {
        list<Contact> con = new list<Contact>();
        for(Account acc:Trigger.new)
        {
            if(acc.Industry == 'Agriculture')
            {
                Contact co = new Contact();
                co.AccountId = acc.Id;
               co.LastName = acc.Name;
                co.Phone = acc.Phone;
                co.Email = acc.Email__C; 
                con.add(co);
                
            }
        }
        insert con;
    }

}