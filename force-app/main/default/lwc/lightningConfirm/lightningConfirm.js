import { LightningElement } from 'lwc';
import LightningConfirm from 'lightning/confirm';

export default class LightningConfirm1 extends LightningElement {
    async handleConfirmClick(){
        const result = await LightningConfirm.open({
            Message:'This is for Lightning Confirm',
            Variant: 'headerless',
            label: 'this is the aria-label value',
        });
    }
}