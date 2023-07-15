import { LightningElement, track, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import USER_ID from '@salesforce/schema/User.Id';
import NAME_FIELD from '@salesforce/schema/User.Name';

export default class GetUserId extends LightningElement {
    @track error;

    @track name;

    @wire (getRecord, {recordId: '$recordId', fields:[NAME_FIELD]})
        wireuser({ error, data }){ if(error){
            this.error = error;
        } else if(data) {
            this.name = data.fields.Name.value;
        }
    }
}