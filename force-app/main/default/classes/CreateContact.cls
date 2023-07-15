public class CreateContact {
    
    public void newContact(Integer intInput){
        contact con = new Contact(firstname = 'Jim'+intInput, lastname = 'Carry'+intInput);
        insert con;
        system.debug('new contact is created with Id::::'+ con.id);
        
    }

}