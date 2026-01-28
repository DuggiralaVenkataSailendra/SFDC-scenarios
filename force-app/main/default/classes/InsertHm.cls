public class InsertHm {
    public static void HmInsert(){

list<Hiring_manager__c> lHm = new list<Hiring_manager__c>();

for (integer i=0;i <= 9; i++) {

Hiring_manager__c Hm = new Hiring_manager__c();

Hm.Name = 'Sailendra 2' ;
Hm.Email__c = 'sailendra@gmail.com';
Hm.Location__c = 'India';
Hm.Phone__c = 965865412;
lHm.add(Hm);
}
insert (lhm);
        system.debug(lhm);
    }
}