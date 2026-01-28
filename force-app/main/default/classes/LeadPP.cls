public class LeadPP {
    public static void Passing_Lead_Rec(String l_lNM,String Comp,String Sts){
        Lead l = new Lead();
        l.LastName = l_lNM;
        l.Company = Comp;
        l.Status = Sts;
        insert l;
        System.debug(l);
    }
}