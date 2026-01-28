public class Case89 {
    public Static void casec(){
        List<Case> cc = [SELECT Id, Priority, CreatedDate FROM Case Where Priority = 'High' AND CreatedDate >Last_N_Days:30];
        System.debug(cc);
        
    }

}