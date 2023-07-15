public class CollectionClass {
    
    public static void Lists(){
        list<Integer> myList = new List<Integer>();
        
        myList.add(47);
        mylist.add(23);
        
        mylist.sort();
        
        system.debug('The list contains two elements');
        integer i = 0;
        
        for(Integer newInt: myList){
            
            system.debug('The index value of ' + i + ':--'+ newInt);
            i++;
        }
        
        Integer i1 = myList.get(0);
        system.debug('Value of zero index is:'+ i1);
        
        mylist.set(0,5);
        Integer i2 = myList.get(0);
        system.debug('Value of zero is:'+ i2);
        
        system.debug('Value of myList is:'+ myList);
        
        myList.clear();
        system.debug('Value of myList is:'+ myList);
    }
    
    public static void Maps(){
        Map<string, string> stringMap = new Map<string, string>();       
     
        stringmap.put('India','New Delhi');
        stringmap.put('Briton', 'London');
        stringMap.put('USA','Washington');
        stringMap.put('Republic of Singapore','Singapore');
        
        system.debug('All the Countries in the Map::' + stringMap);
        
        system.debug('What the Capital city for Briton:-' + stringMap.get('Briton'));
        
        system.debug(stringMap.containsKey('Republic of Singapore'));
        
        system.debug(stringMap.keyset());   
        
        system.debug(stringMap.size());   
        
        system.debug(stringMap.values());
        
        map<string,string> newMap = new map<string, string>();
        newMap.putAll(stringMap);
        system.debug('new Map value is:::' + newMap);
        
        
    }
    
    public static void sets(){
        set<string> myGarage = new set<string>();
        myGarage.add('Car');
        myGarage.add('Bike');
        myGarage.add('Scooter');
        myGarage.add('Car');
        
        system.debug('All my myGarage are::' + myGarage);
        
        system.debug('I am checking if my garage is empty::-'+ myGarage.isEmpty());
        
        set<string> newList = new set<string>{'Bike','Scooter'};
            
		myGarage.removeAll(newList);
        system.debug('All my myGarage are::' + myGarage);       
        
    }

}