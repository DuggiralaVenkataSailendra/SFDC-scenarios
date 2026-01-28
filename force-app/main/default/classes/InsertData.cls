public class InsertData {
    public static void InsertD(){
        
        Account acc = new Account();
        acc.Id = acc.Id;
        acc.Name = 'New Relation Acc 6';
        insert acc;
        system.debug(acc);

        List<Case> c = new List<Case>();
        for(Integer i=0;i<=9;i++){
            Case ca = new Case();
            ca.AccountId = acc.Id;
            ca.Status = 'Working';
            ca.Origin = 'Email';
            c.add(ca);
        }
        insert c;
        system.debug(c);
        
        List<Opportunity> op = new List<Opportunity>();
        for(integer i=0;i<=4;i++){
            Opportunity opp = new Opportunity();
            opp.AccountId = acc.Id;
            opp.Name = 'Acc rel Opp 2 ';
            opp.StageName = 'Closed Won';
            opp.CloseDate = Date.newInstance(2020,10,10);
            opp.Type = 'New Customer';
            op.add(opp);
        }
        insert op;
        system.debug(op);
        
List<Task> t = new List<Task>();
        for(integer i=0;i<=3;i++){
            Task tk = new Task();
            tk.WhatId = acc.Id;
            tk.Status = 'In Progress';
            tk.Subject = 'Send Letter';
            tk.Priority = 'Low';
            t.add(tk);
            
        }
        insert t;
system.debug(t);
        
    
    }
}