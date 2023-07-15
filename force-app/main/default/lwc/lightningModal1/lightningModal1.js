import { api } from 'lwc';
import LightningModal from 'lightning/modal';

export default class LightningModal1 extends LightningElement {
    handleOkey(){
        this.close('okey');

    }

}