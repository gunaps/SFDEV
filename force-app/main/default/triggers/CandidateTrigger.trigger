trigger CandidateTrigger on candidate__c (before insert) {
	//This is the testing one where we are trying the deployment.
	candidate__c can = Trigger.new[0];
    can.description__C = 'Candidates Description is been added here';
    /*if(can.skill__C == null){
        can.skill__C.addError('Skill needs to be filled without fail');
    } */
    
    /* for(candidate__c canRecord: Trigger.new){
        canRecord.skill__c = 'Software';
    } */
}