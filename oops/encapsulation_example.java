class enc{
	private String name;
	private String idnumb;
	private int age;

	public int getAge(){
	return age;
	}
	
	public String getName(){
	return name;
	}

	public String getinumb(){
	return idnumb;
	}

	public void setAge(int newAge){
	age = newAge;
	}

	public void setName(String newName){
	name = newName;
	}

	public void setidnumb(String newId){
	idnumb = newId;
	}
}

public class encapsulation_example{
	public static void main(String args[]){
	enc encap = new enc();
	encap.setName("Abhishek");
	encap.setAge(26);
	encap.setidnumb("218EC");
	System.out.println("Name :"+encap.getName()+"Age :"+encap.getAge()+"ID :"+encap.getinumb());
	}
}
