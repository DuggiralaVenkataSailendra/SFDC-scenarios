/* Configure the Queueable Jobs, to create the "Hiring Manager Record", and an Associated "Position Record" by using 2 Queueable interface classes.

 

 1. Implement the Chaining Process, to invoke the Queueable Classes.

 2. Supply the SObject Type of Parameters to the Queueable Class.

 3. Track the Result of each Queueable class by using AsyncApexJob object.*/
public class HiringManagerClass implements System.Queueable{
    public void execute(System.QueueableContext qc){
        Hiring_manager__c hmc = new Hiring_manager__c();
        hmc.Name = 'vikram123';
        hmc.Email__c = 'vik4@gmail.com';
        hmc.Phone__c = 699550987;
        insert hmc;
        system.enqueueJob(new PositionQueueable(hmc.Id));

        
    }

}