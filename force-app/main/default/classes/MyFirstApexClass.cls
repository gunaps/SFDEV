public class MyFirstApexClass {
 
    public static void sample(){
        
        list<Account> accList = [select id,name, description from Account];  
        
        system.debug('Account Size is::' + accList.size());
        
        list<Account> newAccList = new list<Account>();        
        
        for(Account objAcc: accList){
            objAcc.description = 'This is new Description value on 30-04-2023.';
            newAccList.add(objAcc);
         }
        
        if(newAccList.size() > 0 && newAccList != null){
            update newAccList;
        }
        
    }

    private void createAccount(string aName, string aRating){
        Account acc = new Account();
        
        contact cont = new contact();
        
        acc.name = aName;
        acc.rating = aRating;
        insert acc;
        
        system.debug('New Account Created with Id:::'+ acc.id);
        }
    
}