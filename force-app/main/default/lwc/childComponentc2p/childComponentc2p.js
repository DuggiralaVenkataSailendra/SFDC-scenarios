import { LightningElement } from 'lwc';

export default class ChildComponentc2p extends LightningElement {

    handleSubstractClick() {
        this.dispatchEvent(new CustomEvent('substract'));
    }

    handleAdditionClick() {
        this.dispatchEvent(new CustomEvent('addition'));
    }
}