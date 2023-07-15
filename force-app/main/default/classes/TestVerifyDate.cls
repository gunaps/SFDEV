@isTest
public class TestVerifyDate {

    @isTest
    static void testMethod1(){
        Date d = verifyDate.CheckDates(system.today(), system.today()+1);
        Date d1 = verifyDate.checkDates(system.today(), system.today()+60);
    }
}