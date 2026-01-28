public class CaseHPriority {
    Public static void Case_Priority(){
        Case c = new Case();
        c.Status = 'New';
        c.Priority = 'High';
        c.Origin = 'Web';
        c.Type = 'Other';
        insert c;
    }
}