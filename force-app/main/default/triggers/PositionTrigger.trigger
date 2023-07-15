trigger PositionTrigger on Position__c (before insert, after insert, before update, after update, before delete, after undelete) {
    //system.debug(RecursiveTriggerHandler.isFirstRun);    
    //if(RecursiveTriggerHandler.isFirstRun = false){        
    //system.debug(RecursiveTriggerHandler.isFirstRun); 
    
    if(trigger.isBefore && trigger.isUpdate){
        PositionTriggerHandler.handleBeforeUpdate(Trigger.newMap, Trigger.oldMap);
        PositionTriggerHandler.handleBeforeUpdateCheckMaxSalary(trigger.new);
    }
    
    if(trigger.isBefore && trigger.isInsert){
        PositionTriggerHandler.handleBeforeInsertCheckMaxSalary(trigger.new);
    }
    
    //}
    
}