import java.util.*;
public class emp_wage{
	public static void main(String arg[]){
	//double randomVar=Math.floor(Math.random()*10)%2;
	double randomVar=1;
	int totalWage;
	System.out.println("Enter the number 1 for full time or 2 for part time");
	Scanner scanner = new Scanner(System.in);
	int choice = scanner.nextInt();

			if(randomVar == 1)
				{
					switch(choice)
					{
					case 1:
					System.out.println("Emp is full time");
					int perHourWage=20;
					int fullDayHour=8;
					totalWage=perHourWage*fullDayHour;
					System.out.println("Present so total Wage :"+totalWage);
					break;
					
					case 2:
					System.out.println("Emp is part time");
					int perHourWagePart=100;
					int fullDayHourPart=8;
					totalWage=perHourWagePart*fullDayHourPart;
					System.out.println("Part Time worker is present So total wage :"+totalWage);
					break;

					default:
					System.out.println("Enter the number as mentioned in the above comment");
					}

				}
			else
				{
					totalWage=0;
					System.out.println("Not Present so total wage :"+totalWage);
				}
			}
}

