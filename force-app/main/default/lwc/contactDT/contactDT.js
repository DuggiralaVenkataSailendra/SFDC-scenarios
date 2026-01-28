import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactDT.getContacts';

const columns = [
    { label: 'Name', fieldName: 'Name' },
    { label: 'Account.Name', fieldName: 'Account.Name' },
    { label: 'Email', fieldName: 'Email' },
    { label: 'Mobile', fieldName: 'MobilePhone' }
];

export default class ContactDT extends LightningElement {

    columns = columns;
    data = [];  

    @wire(getContacts)
    wiredContacts({ data, error })
     {
        if (data)
             {
            this.data = data
        } 
        else if (error)
             {
            console.log('An Unhandled exception occured',error);
        }
    }
}