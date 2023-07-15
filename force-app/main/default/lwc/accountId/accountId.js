import { LightningElement, api } from 'lwc';

export default class AccountId extends LightningElement {
    @api recordId;
    handleChange(event){
        this.message = event.target.value;
    }
}