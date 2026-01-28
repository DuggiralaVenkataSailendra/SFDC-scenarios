public class DML4Class {
    public static void insertAccandRec(){
        list<Account> ac = new list<Account>();
        Account acc = new Account();
        acc.Id = acc.Id;
        acc.Name = 'New Relation Acc';
        ac.add(acc);
        insert ac;
        system.debug(ac);
    
    if(acc.Id !=''){
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
        
        
    }
    }
    

}