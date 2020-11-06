public class emp_wage_if{
public static void main(String[] args){
int part_time=1;
int full_time=2;
int emp_rate=150;
int hour=0;
int wage=0;
double ran=Math.floor(Math.random()*10)%3;
if(ran==part_time)
	hour=4;
else if(ran==full_time)
	hour=8;
else
	hour=0;
wage=hour*emp_rate;
System.out.println("Emp Wage: "+ wage);
}
}
