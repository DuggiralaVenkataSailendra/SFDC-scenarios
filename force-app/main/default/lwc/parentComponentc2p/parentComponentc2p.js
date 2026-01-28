import { LightningElement } from 'lwc';

export default class ParentComponentc2p extends LightningElement {

    countValue = 0;

    handleSubs() {
        this.countValue--;
    }

    handleAdds() {
        this.countValue++;
    }
}