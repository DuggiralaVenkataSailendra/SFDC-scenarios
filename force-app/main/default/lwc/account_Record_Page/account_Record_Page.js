import { LightningElement, api } from 'lwc';

export default class Account_Record_Page extends LightningElement {

    @api recordId;

    isView = true;
    isEdit = false;

    handleEdit() {
        this.isView = false;
        this.isEdit = true;
    }

    handleCancel() {
        this.isView = true;
        this.isEdit = false;
    }

    handleSuccess() {
        this.isView = true;
        this.isEdit = false;
    }
}