public class ContactPP {
    public static void Passing_Con_Rec(String C_lNM, String Dept,String Lsrc){
        Contact Co = new Contact();
        Co.LastName = C_lNM;
        Co.Department = Dept;
        Co.LeadSource = Lsrc;
        insert Co;
        System.debug(Co);
    }

}