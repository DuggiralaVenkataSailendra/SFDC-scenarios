import { LightningElement } from 'lwc';
import Opportunity_Object from '@salesforce/schema/Opportunity';
import Name_field from '@salesforce/schema/Opportunity.Name';
import Amount_field from '@salesforce/schema/Opportunity.Amount';
import CloseDate_field from '@salesforce/schema/Opportunity.CloseDate';
import StageName_field from '@salesforce/schema/Opportunity.StageName';
import Opportunity_Id from '@salesforce/schema/Opportunity.Id';

export default class RecordViewFormLDS extends LightningElement {

    objectApiName = Opportunity_Object
    recordId = "006dM00000IpGI5QAN"
    Idfield = Opportunity_Id
    namefield = Name_field
    amountfield = Amount_field
    closeadatefield = CloseDate_field
    stagenamefield = StageName_field

}