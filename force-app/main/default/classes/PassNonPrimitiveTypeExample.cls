public class PassNonPrimitiveTypeExample {
    

    public static void createTemperatureHistory(){
        List<integer> fillMe = new list<Integer>();
        reference(fillMe);
        system.debug(fillMe);
        list<integer> createMe = new list<integer>();
        newReference(createMe);
        system.debug(createMe);
    }
    
    public static void reference(list<Integer> m){
        m.add(70);
        m.add(78);
        m.add(67);
        m.add(87);
        m.add(34);
    }
    
    public static void newReference(list<integer> n){
        n = new List<integer>{67,68,69,60,91};            
    }
}