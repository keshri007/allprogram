import java.util.*;
public class palindrome{
	public static void main(String[] args){
	int number;
	int rev=0;
	int digit;
	int n;

	System.out.println("Enter the number");
	Scanner in=new Scanner(System.in);
	number=in.nextInt();
	
	n=number;

	while(number != 0){
		digit=number%10;
		rev=(rev*10)+digit;
		number=number/10;
		}
	
	if(n==rev)
		System.out.println("the number is palindrome");
	else
		System.out.println("the number is not plaindrome");
	}
}
