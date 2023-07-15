import { LightningElement } from 'lwc';
import LightningAlert from 'lightning/alert';

export default class MyApp1903 extends LightningElement {
    async handleAlertClick(){
        await LightningAlert.open({
            Message: 'this is an alert',
            Theme:'error',
            Label:'Error!',
        });
    }

}