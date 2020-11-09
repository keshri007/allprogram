import java.util.Scanner;
class Book{
	Scanner in = new Scanner(System.in);
	public class Entry{
		private String first_name;
		private String last_name;
		private String address;
		private String city;
		private String state;
		private int zip_code;
		private int mobile_number;

		Entry(String first_name, String last_name, String address, String city, String state, int zip_code, int mobile_number){
			this.first_name = first_name;
			this.last_name = last_name;
			this.address = address;
			this.city = city;
			this.state = state;
			this.zip_code = zip_code;
			this.mobile_number = mobile_number;
		}

		Entry(){
			first_name = "";
			last_name = "";
			address = "";
			city = "";
			state = "";
			zip_code = 0;
			mobile_number = 0;
		}

		public void readEntry(){
			System.out.println("First Name :"+first_name);
			System.out.println("Last Name :"+last_name);
			System.out.println("Address :"+address);
			System.out.println("City :"+city);
			System.out.println("State :"+state);
			System.out.println("Zip Number :"+zip_code);
			System.out.println("Mobile Number :"+mobile_number);
		}
	}


	private int entries = 0;
	Entry[] contents;

	public void initEntries(int e){
		contents = new Entry[e];
		for(int i=0;i<contents.length; i++){
			contents[i] = new Entry();
		}
	}

	public int getEntries(){
		return contents.length;
	}

	public void add(String first_name, String last_name, String address, String city, String state, int zip_code, int mobile_number){
		if(entries<contents.length){
			contents[entries] = new Entry(first_name, last_name,address,city,state,zip_code, mobile_number);
			entries++;
		}
		else System.out.println("Error: book is full");
	}

	public void remove(int entry){
		if (entries>0){
			contents[entry] = new Entry();
         for (int i = 0;i<entries-entry;i++){
         	if (entry+1==entries) contents[entry] = new Entry();
            else{
            	Entry temp = contents[entry+i];
               contents[entry+i] = contents[entry+i+1]; //Removes an entry end moves each entry after it one backwards.
               contents[entry+i+1] = temp;
               }
            }
      	entries--;
   	}
      else System.out.println("Error: book is empty.");
	}

	public void edit(String address, String city, String state, int zip_code, int whichentry){
      contents[whichentry].address= address;
      contents[whichentry].city= city;
      contents[whichentry].state= state;
   	contents[whichentry].zip_code = zip_code;
	}

	public void sort(int n){
   	for(int i = 0;i<contents.length;i++){
      	for (int j = 0;j<contents.length;j++){
         	switch(n){
            	case 1:
               	if (contents[i].first_name.compareTo(contents[j].first_name)<0){
                  	Entry temp = contents[i];
                     contents[i] = contents[j];
                     contents[j] = temp;
                     }
                     break;
               case 2:
               	if (contents[i].last_name.compareTo(contents[j].last_name)<0){
                  	Entry temp = contents[i];
                     contents[i] = contents[j];
                     contents[j] = temp;
                     }
                     break;
               case 3:
                  if (contents[i].address.compareTo(contents[j].address)<0){
                     Entry temp = contents[i];
                     contents[i] = contents[j];
                     contents[j] = temp;
                     }
                     break;
               default: 
                     System.out.println("Error: invalid field");
                     break;
                }
            }
        }
    }
}

public class address_book_try{
	public static void main(String[] args){

		int total_books;
		int total_records;
		Scanner in = new Scanner(System.in);
		System.out.println("Enter number of books you want to create");

		Book[] lib = new Book[0];

		while(true){
			total_books = in.nextInt();
			if(total_books > 0){
				lib = new Book[total_books];
				break;
			}
			else
				System.out.print("You must create at least 1 book");
		}

		for(int i=0;i<lib.length;i++){
			lib[i] = new Book();

			while(true){
				System.out.print("Number of Enteries you want to store in a book");
				total_records = in.nextInt();
				if(total_records>0){
					lib[i].initEntries(total_records);
					break;
				}
				else
					System.out.println("You must create at least 1 entry");
			}
		}

		boolean done = false;
		int book_select = 0;
		String choice;
		while(done==false){
			System.out.println("Book "+book_select+" is currently selected");

			for(int i=0;i< lib[book_select].getEntries();i++){
				System.out.println("=========Entry "+i+"===========");
				lib[book_select].contents[i].readEntry();
			}

			System.out.println("Enter A  to (A)dd data in address book");
			System.out.println("Enter E  to (E)dit data in address book");
			System.out.println("Enter D  to (D)elete data of address book");
			System.out.println("Enter S  to (S)ort entries");
		//System.out.println("Enter 5 to (S)ort entries by (Z)ip code");
			System.out.println("Enter P  to (P)rint all the entries of address book");
			System.out.println("Enter C  to (C)reate new address book");
			System.out.println("Enter O  to (O)pen existing address book");
			System.out.println("Enter S  to (S)ave address book");
			System.out.println("Enter SA to (S)ave address book (A)s");
			System.out.println("Enter Q  to (Q) the program");

			choice = in.next();
			String first_name, last_name, address, city, state;
			int zip_code, mobile_number;

			switch(choice){
				case "A" : 	System.out.println("First Name");
								first_name = in.next();
								System.out.println("Last Name");
								last_name = in.next();
								System.out.println("Address");
								address = in.next();
								System.out.println("City");
								city = in.next();
								System.out.println("State");
								state = in.next();
								System.out.println("Pin Code");
								zip_code = in.nextInt();
								System.out.println("Phone Number");
								mobile_number = in.nextInt();
								lib[book_select].add(first_name,last_name,address,city,state,zip_code,mobile_number);
								break;
				case "E" :	System.out.print("Edit which entry?");
            	    		int whichEntry = in.nextInt();
               	 		System.out.print("Address");
                			address = in.next();
                			System.out.print("city");
               	 		city = in.next();
                			System.out.print("state");
                			state = in.next();
                			System.out.print("zip");
                			zip_code = in.nextInt();
                			lib[book_select].edit(address, city,state,zip_code, whichEntry);
								break;
				case "D" : 	System.out.print("Remove Entry ?");
								int entry = in.nextInt();
								lib[book_select].remove(entry);
								break;
				case "S" : 	System.out.println("Sort alphabetically by which field?");
            	    		System.out.println("1. Sort by first name");
               	 		System.out.println("2. Sort by last name");
                			System.out.println("3. Sort by address");
                			System.out.println("4. Sort by zip");
         	       		lib[book_select].sort(in.nextInt());
								break;
				//case 5 : 	System.out.println("SortZip");	break;
				//case 6 : 	System.out.println("Print");	break;
				//case 7 : 	System.out.println("Create");	break;
				//case 8 : 	System.out.println("Open");	break;
				//case 9 : 	System.out.println("Save");	break;
				//case 10: 	System.out.println("Save As");	break;

				case "Q" : 	System.out.println("Exiting........");
								System.exit(0);
								break;

				default: 	System.out.println("Invalid Entry");
			}
		}
	}
}
