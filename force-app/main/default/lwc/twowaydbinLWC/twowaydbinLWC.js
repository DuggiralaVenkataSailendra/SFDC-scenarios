import { LightningElement, track } from 'lwc';
export default class TwowaydbinLWC extends LightningElement {
      @track userEnteredValue='Salesforce'
    handleChange(event)
    {
        this.userEnteredValue=event.target.value
    }

}