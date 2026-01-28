public class Insert_Contact_Details {
    public static void InsertContact(){
Contact c = new Contact();
    c.LastName ='last name of contact';
    c.Department = 'Sales';
    insert c;
        system.debug(c.Id);
    }}