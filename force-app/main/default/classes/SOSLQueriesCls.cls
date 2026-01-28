public class SOSLQueriesCls {
    public static void qrys(){
        List<List<Sobject>> qry = [find 'Amount' in all fields  returning Opportunity(Id,Amount,CloseDate)];
        
        list<Opportunity> opp = (list<Opportunity>)qry[0];
        list<Opportunity> opps = new list<Opportunity>();
        for(Opportunity op : opp)
        {
            if(op.CloseDate>Date.ToDay())
            {
                opps.add(op);
            }
            //opp.sort(qry);
            System.debug(qry);
            
        }
        
        List<List<SObject>> results = [
    FIND 'Amount' IN ALL FIELDS
    RETURNING Opportunity(Id, Name, Amount, CloseDate)
];

List<Opportunity> oppList = (List<Opportunity>) results[0];

// Print raw list
System.debug('Opportunities Returned: ' + oppList);

// Print each record nicely
for (Opportunity o : oppList) {
    System.debug(
        'Opp → Id: ' + o.Id + 
        ', Name: ' + o.Name + 
        ', Amount: ' + o.Amount + 
        ', CloseDate: ' + o.CloseDate
    );
}

        
    }

}