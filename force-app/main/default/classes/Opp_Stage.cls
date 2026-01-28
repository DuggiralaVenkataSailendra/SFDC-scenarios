public class Opp_Stage {
    public static void Opportunity_Stage(){
        Opportunity opp = new Opportunity();
        opp.Name = 'Test opp';
        opp.StageName = 'Closed Won';
        opp.CloseDate = Date.newInstance(2025,11,02);
        insert opp;
    }
}