public class NewCarClass {

    public static string model='';
    
    public static void drive(){
        
        Integer speed = 50;
        model = 'Toyoto';
        
        system.debug('Model::'+model);
        system.debug('speed::'+speed);
    }
    
    public integer maxSpeed(integer speed){
        system.debug('maxSpeed is::'+ speed);
        return speed;
           
    }
    
    public string CarModel(string str){
        return str;
    }
}