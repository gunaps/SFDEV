public class RandomContactFactory {
    public static list<contact> generateRandomContacts(Integer numContactToGenerate, string FName){
        list<contact> conList = new list<Contact>();
        
        for(Integer i=0; i<numContactToGenerate; i++){
            contact c = new contact(lastname = 'Last Name'+i, firstName = FName+ i);
            conList.add(c);
        }
        
        //insert conList;
        system.debug(conList.size());
        return conList;
    }
    
}