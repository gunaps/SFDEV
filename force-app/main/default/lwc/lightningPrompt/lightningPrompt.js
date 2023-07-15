import { LightningElement } from 'lwc';
import LightningPrompt from 'lightning/prompt';

export default class LightningPrompt1 extends LightningElement {
    handleLightningPrompt(){
        LightningPrompt.open({
            Message:'this is prompt message',
            Label:'Please respond',
            defaultValue:'initial input value',
        }).then((result) => {
            //the prompt has been closed.

        });
    }
}