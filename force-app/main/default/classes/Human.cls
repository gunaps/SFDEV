public class Human {
	private string name;
    private Integer age;
    private String gender;
    
    public void setAttributes(String nameInput, Integer ageInput, String genderInput){
        this.name = nameInput;
        this.age = ageInput;
        this.gender = genderInput;
    }
    
    public void displayAttributes(){
        system.debug('Humans Name is:' + name);
        system.debug('Humans age is:' + age);
        system.debug('humans gender is:'+ gender);
    }
    
}