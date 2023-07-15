public class game {
    public string name;
    public string type;
    public Integer storyTime;
    public customer__C cust;
    
    public game() {
        system.debug('I am the constructor');
        cust = new customer__C();
        this.setAttribute('Age of empires', 'Strategy', 3);
        system.debug('Name:::::'+ name + '; Game Type is::::'+ type + '; Story is:::'+ storyTime);
    }
    
    public void setAttribute(string nameInput, string typeInput, Integer storyTimeInput){
        /* this.name = "Age of Empires- Conquerors";
        this.type = "Strategy";
        this.storyTime = 3; */
        
        this.name = nameInput;
        this.type = typeInput;
        this.storyTime = storyTimeInput;
    }

}