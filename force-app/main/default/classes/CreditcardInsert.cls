public class CreditcardInsert {
    public CreditCard__C creditCardRecord;
    
    public void ccInput(string nameInput, Integer monthlyChargeInput,
                       Integer oneTimeCostInput, Decimal transactionInput){
        
        					this.creditCardRecord = new CreditCard__c();
                           creditCardRecord = new CreditCard__C();
                           this.creditCardRecord.name = nameInput;
                           this.creditCardRecord.Monthly_Rental__c = monthlyChargeInput;
                           this.creditCardRecord.One_Time_Cost__c = oneTimeCostInput;
                           this.creditCardRecord.Transaction_Charges__C = transactionInput;
                           
                           insert this.creditcardRecord;
                           
    }

}