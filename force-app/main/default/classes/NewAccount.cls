public class NewAccount {

    public void CreateAccount(Integer intInput){
        Account acc = new Account(name = 'Lumeris');
        insert acc;
        system.debug('new Account created with Id::::'+ acc.id);
    }
}