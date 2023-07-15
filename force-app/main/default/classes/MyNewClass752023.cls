public class MyNewClass752023 {
    
    public static void CreateAccount(string sAccountName){
        Account acc = new Account();
        acc.name = sAccountName;
        insert acc;
        
        Account acc1 = new Account();
        acc1.name = sAccountName+' '+1;
        insert acc1;
    }
}