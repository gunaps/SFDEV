public class CustomerInsert {
	//primitives string, Boolean, Integer, Decimal
	public customer__C customerRecord;
    
    public void insertCustomer(string nameInput, string emailInput,
                              string locationInput, string phoneInput,
                              Integer revenueInput, boolean activeInput){
                                  
           						this.customerRecord = new Customer__c();
                                this.customerRecord.name = nameInput;
                                  this.customerRecord.email__c = emailInput;
                                  this.customerRecord.location__c = locationInput;
                                  this.customerRecord.phone__c = phoneInput;
                                  this.customerRecord.Annual_Revenue__c = revenueInput;
                                  this.customerRecord.active__c = activeInput;
                                  
                                  insert this.customerRecord;
                                  
                              }
    
                                  public void insertCustomerWithoutthis(string nameIp, string emailIp, string phoneIp, Integer annualRevenueIp, string locationIp, boolean activeIp){
                                      
                                      customerRecord = new customer__c();
                                      customerRecord.name = nameIp;
                                      customerRecord.email__c = emailIp;
                                      customerRecord.phone__c = phoneIp;
                                      customerRecord.location__C = locationIp;
                                      customerRecord.annual_revenue__c = annualRevenueIp;
                                      customerRecord.active__c = activeIp;
                                      
                                      insert customerRecord;
                                      
                                  }      
        
}