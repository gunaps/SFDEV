public class Collection3 {
    //class variable
	public list<creditcard__C> ccLists;
    public Integer k;
    
    public void insertCreditCards() {
        //allocate space for the global variable
        this.ccLists = new List<creditcard__c>();
        this.k = 0;
        
        //local variable
        creditcard__c card = new creditCard__C();
        Integer i = 0;
        Set<Integer> int1 = new Set<Integer>();
        
        //Loop - while
        while(i < 6){ 
            int1.add(i);
            i++;
        }
        system.debug('int1 : ' + int1);
    }
}