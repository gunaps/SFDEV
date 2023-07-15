public class QueueOwnerUpdate {
	public list<Group> grp = new list<Group>();
    private final case caseObject{get; set;}
    public string queue1 {get;set;}
    public string caseId{get;set;}
    
    public queueOwnerUpdate(){
        
    }
    
    public list<selectOption> QueueList{
        get{
            grp = [select id,name, type from group where type = 'Queue'];
            QueueList = new list<SelectOption>();
            QueueList.add(new SelectOption('--None--', '--None--'));
            
            for(Group q: grp){
                QueueList.add(new SelectOption(q.id,q.name));
            }
            system.debug('Selected Queue |'+ QueueList);
            return QueueList;
        }
        set;
    }
    public PageReference saveCase(){
        Try{
            if(queue1 == '--None--'){
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Error, 'Please select a query from dropdown'));
            } else{
                caseId = ApexPages.currentPage().getParameters().get('id');
                case caseRecord = [select id, caseNumber, ownerId from case where id =: caseId];
                caseRecord.ownerId = queue1;
                update caseRecord;
                PageReference ref = new PageReference('/'+caseRecord.id);
                return ref;
            }
        }catch(Exception e){
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Please select a Queue from dropdown'));
        }
        return Null;
    }
}