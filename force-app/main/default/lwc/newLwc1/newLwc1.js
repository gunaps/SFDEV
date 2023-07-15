import { LightningElement, track } from 'lwc';

export default class NewLwc1 extends LightningElement {
    @track message;

    handleChange(event){
        this.message = event.target.value;
    }

}