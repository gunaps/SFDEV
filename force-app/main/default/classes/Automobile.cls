public class Automobile {
    
    public static string FuelType(string type){
        
        if(type == 'Car')
        {
            string gas = 'petrol (gasoline)';
            system.debug('gas::'+ gas);
            return gas;
        }
        else 
        {
            string gas = 'Diesel';
            system.debug('gas::'+ gas);
            return 'Diesel';
        }
    }
    
    public integer maxSpeed100(){
        system.debug('Max Speed 100');
        return 100;     
    }
    
    public integer maxSpeed120(){
        system.debug('Max Speed 120');
        return 120;      
    }
    
}