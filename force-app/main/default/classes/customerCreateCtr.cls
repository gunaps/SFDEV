public class customerCreateCtr {
    public customer__C customerRecord{get; set;}
    
    public customerCreateCtr(){
        customerRecord = new Customer__c();
    }

    public void createCustomer(){
        insert customerRecord;
        if(customerRecord.id != null){
            ApexPages.message newMessage;
            newMessage = new ApexPages.message(apexPages.severity.INFO, 'Record Created!');
               apexPages.addMessage(newMessage);
        }

    }
}