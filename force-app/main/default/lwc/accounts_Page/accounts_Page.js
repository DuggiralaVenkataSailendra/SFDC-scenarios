import { LightningElement, api } from 'lwc';
import Account_Object from '@salesforce/schema/Account';
import Name_field from '@salesforce/schema/Account.Name';
import Rating_field from '@salesforce/schema/Account.Rating';
import Phone_field from '@salesforce/schema/Account.Phone';
import Account_Id from '@salesforce/schema/Account.Id';

export default class RecordViewFormLDS extends LightningElement {

    @api recordId;          
    @api objectApiName = Account_Object;

    Idfield = Account_Id;
    namefield = Name_field;
    ratingfield = Rating_field;
    phonefield = Phone_field;

}