global class LeadProcessor implements database.Batchable<sObject> {
    global static database.QueryLocator start(database.BatchableContext bc){
        string query = 'select id, leadsource from lead '+ (system.test.isRunningTest()?'LIMIT 200': ''); 
        return database.getqueryLocator(query);
    }
    
    global static void execute(database.BatchableContext bc, list<lead> scope){
        for(lead l: scope){
            l.leadSource = 'Dreamforce';
        }
        update scope;
        
    }
    
    global static void finish(Database.batchableContext bc){}
    
    
}