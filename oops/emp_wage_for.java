public class emp_wage_for{
public static void main(String[] args){
final int part_time=1;
final int full_time=2;
int emp_rate=200;
int working_days=2;

int hour=0;
int wage=0;
int total_wage=0;

for(int day=0; day<working_days; day++){
int ran= (int) Math.floor(Math.random()*10)%3;
switch(ran){
	case part_time: hour = 4; break;
	case full_time: hour = 8; break;
	default:	hour = 0;
}
wage=hour*emp_rate;
total_wage += wage;
System.out.println("Emp Wage: "+ wage);
}
System.out.println("Total emp wage: "+total_wage);
}
}
