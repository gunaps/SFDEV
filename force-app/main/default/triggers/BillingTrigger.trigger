trigger BillingTrigger on Billing__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    if(trigger.isbefore){
        if(trigger.isInsert){
             billingTriggerHandler.calculateTotalAmount(trigger.new);
        }
        if(trigger.isUpdate){
            billingTriggerHandler.calculateTotalAmount(trigger.new);
        }
        if (trigger.isdelete){
            
        }
    }
    if(trigger.isafter){
        if(trigger.isInsert){
            
        }
        if(trigger.isUpdate){
            
        }
        if(trigger.isDelete){
            
        }
        if(trigger.isUndelete){
            
        }
    }
    
    
}