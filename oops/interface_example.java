interface Animal{
	public void animalSound();
	public void sleep();
}

class Dog implements Animal{
	public void animalSound(){
	System.out.println("The dog says Bhow Bhow");
	}
	public void sleep(){
	System.out.println("Zzzzzzzzzzzz");
	}
}

class interface_example{
	public static void main(String[] args){
	Dog dog = new Dog();
	dog.animalSound();
	dog.sleep();
	}
}
