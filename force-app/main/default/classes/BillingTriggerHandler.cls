public class BillingTriggerHandler {
    
    public static void calculateTotalAmount(List<billing__C> newBills){
        list<billing__C> BillsList = new List<Billing__c>();
        billsList = newBills;
        set<id> creditCardIds = new Set<id>();
        set<string> cardName = new Set<string>();
        
        for(Integer i = 0; i< billsList.size(); i++){
            creditCardIds.add(billsList[i].creditCard__c);
            cardName.add(billsList[i].creditCard__r.name);
            system.debug(billsList[i]);
           
        }
         //step-2
        Map<Id, creditcard__c> billToCreditCardMap = new Map<id, Creditcard__c>();
        List<creditcard__c> creditCards = [select id, transaction_charges__c, monthly_one_time_cost__c, monthly_rental_charge__c 
                                           from creditcard__c
                                           where id in : creditCardIds];
        for(Integer i = 0; i < creditCards.size(); i ++){
            billToCreditCardMap.put(creditCards[i].id, creditcards[i]);
        }
        //step -3
        for(integer i = 0; i < billsList.size(); i ++){
            billsList[i].total_amount__C = billsList[i].cash_withdrawal__C + 
                									billToCreditCardMap.get(billsList[i].creditcard__c).monthly_one_time_cost__c +
                									billTocreditcardMap.get(billsList[i].creditcard__c).monthly_rental_charge__c +
                									billsList[i].Number_of_transactions__c * 
                									billToCreditCardMap.get(billsList[i].creditcard__c).Transaction_charges__C;
    }
    }

}