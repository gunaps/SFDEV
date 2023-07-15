public class MyNewClass7520231{
    
    public static void CreateAccount(string sAccountName){
        Account acc = new Account();
        acc.name = sAccountName;
        insert acc;
    }
}