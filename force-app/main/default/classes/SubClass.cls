public class SubClass extends SuperClass{
     public SubClass(){}
    
    public SubClass(string sal, string lastname, string firstname){
        super(sal, lastname,firstname);
    }
    
    public override void printName(){
        super.printName();
        system.debug('You call me by ' + super.getFirstName());
    }

}