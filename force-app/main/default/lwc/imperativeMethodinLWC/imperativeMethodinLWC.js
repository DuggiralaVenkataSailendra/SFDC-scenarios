import { LightningElement } from 'lwc';
import getAccounts from '@salesforce/apex/ImperativeCallMethod.getAccounts';

export default class ImperativeMethodinLWC extends LightningElement {

    keyword = '';
    accounts = [];

    columns = [
        { label: 'Name', fieldName: 'Name' },
        { label: 'Industry', fieldName: 'Industry' }
    ];

    handlechange(event) {
        this.keyword = event.target.value;
    }

    handlesearch() {
        if(!this.keyword){
            this.accounts = [];
            return;
        }

        getAccounts({ keyword: this.keyword })
            .then(result => {
                this.accounts = result;
            })
            .catch(error => {
                console.error(error);
            });
    }
}