trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    list<task> taskList = new list<task>();
    for(opportunity opp: trigger.new){
        
        
        if(opp.StageName == 'Closed Won'){
            tasklist.add(new task(subject='Follow Up Test Task', whatId = opp.id));
        }
         
    }
    insert taskList;
}