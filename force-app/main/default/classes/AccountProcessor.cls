public class AccountProcessor {
	@future
    public static void countContacts(list<id> accntList){
        list<Account> oldAccList = [select id, Number_Of_Contacts__c from account where id in: accntList];
        list<Account> aList = new list<Account>();
        
        for(Account a: oldAccList){
            integer i = 0;
            for(contact c: [select id, lastname from contact where accountId =: a.id]){
                i++;
            }
            a.Number_Of_Contacts__c = i;
            aList.add(a);
        }
        update alist;
    }
}