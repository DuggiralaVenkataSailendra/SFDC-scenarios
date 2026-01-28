public class PositionQueueable implements System.Queueable {
    Id hiringManagerId;
    
    public PositionQueueable(Id hrId) {
        hiringManagerId = hrId;
    }
    
    public void execute(System.QueueableContext qc) {
        Position__c pos = new Position__c();
        pos.Name = 'Developer';
        pos.City__c = 'Hyd';
            pos.HR_Email_ID__c = 'Poshr@gmail.com';
            pos.Location__c = 'Hyderabad';
        pos.NumberOfVaccinces__c = 3;
            pos.Milestone_Date__c = Date.newInstance(2025,11,13);
        pos.Maximum_Budget__c = 25000;
        pos.Hiring_manager__c= hiringManagerId;
        
        insert pos;
        
    }
}