public virtual class SuperClass {
	public string Salutation;
    public string FirstName;
    public string LastName;
    
    public superClass(){
        salutation ='Mr.';
        firstName = 'Charles';
        lastname = 'Donald';
    }
    
    public superClass(string sal, string fName, string lName){
        salutation =sal;
        firstName = fName;
        lastname = lName;
    }
    
    public virtual void printName(){
        system.debug('My Name is '+ Salutation+ LastName);
    }

    public virtual string getFirstName(){
        return firstName;
    }
    
}