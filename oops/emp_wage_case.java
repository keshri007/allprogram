public class emp_wage_case{
public static void main(String[] args){
final int part_time=1;
final int full_time=2;
int emp_rate=150;
int hour=0;
int wage=0;

int ran= (int) Math.floor(Math.random()*10)%3;

switch(ran){
case part_time:
   				hour=4;
					break;

case full_time:
				   hour=8;
					break;
default:
   				hour=0;
}
wage=hour*emp_rate;
System.out.println("Emp Wage: "+ wage);
}
}

