trigger PositionTriggerLegacy on Position__c (before insert) {
    for(position__C postRecord: Trigger.new){
        List<job_application__c> jobAppList = [select id, candidate__c, job_position__c from job_application__c where job_position__C = :postRecord.Id];
        
        //Give your implementation here.
    }

    
}