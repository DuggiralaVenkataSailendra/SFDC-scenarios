/*public class JobPara {
    public static void params(String Name3){
        list<Job__c> jjc =[SELECT Id, Job_Status__c, Name, About_Previos_Job__c FROM Job__c where Job_Status__c = 'Employed'];
       /* Job__c jc = new Job__c();
        jc.Name = ',mnbv';
        jc.About_Previos_Job__c = 'Dec';
		
        list<String> ls = new list<String>();
        for(Job__c jcc : jjc){
            jcc.Job_Status__c = 'Employed';
            jcc.About_Previos_Job__c = (String) Name3;
            ls.add(jcc);
        }
        insert ls;
        system.debug(jcc);
    }
}*/
public class JobPara {
    public static void params(String Name3){
        List<Job__c> jjc = [SELECT Id, Job_Status__c, Name, About_Previos_Job__c FROM Job__c WHERE Job_Status__c = 'Employed'];
        
        List<Job__c> ls = new List<Job__c>();
        for (Job__c jcc : jjc) {
            jcc.Job_Status__c = 'Employed';
            jcc.About_Previos_Job__c = Name3;
            ls.add(jcc);
        }
        update ls;
        System.debug(ls);
    }
}