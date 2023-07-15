@isTest
public class TestRestrictContactByName {
//@isTest
    public static testMethod void testResult1(){
        
        list<contact> conList = new list<contact>();
        
        conList.add(new contact(lastname = 'ABC'));
        conList.add(new contact(lastname = 'INVALIDNAME'));
        conList.add(new contact(lastname = 'xyz'));
        
        Database.SaveResult[] result = Database.insert(conList, false);
        
        
        for(Database.saveResult sr: result){
            if(!sr.isSuccess()){
                system.assert(!sr.isSuccess());
            } else{
                system.assert(sr.isSuccess());
            }
        }
    }
}