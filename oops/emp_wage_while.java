public class emp_wage_while{
public static void main(String[] args){
final int part_time=1;
final int full_time=2;
final int emp_rate=200;
final int working_days=20;
final int max_hour=100;

int hour=0;
int total_hour=0;
int total_days=0;

while (total_hour <= max_hour && total_days < working_days){
total_days++;
int ran= (int) Math.floor(Math.random()*10)%3;
switch(ran){
   case part_time: hour = 4; break;
   case full_time: hour = 8; break;
   default: hour = 0;
}
total_hour += hour;
System.out.println("Day:" + total_days + " Emp Hour: "+ hour +" " + total_hour);
}
int total_wage= total_hour*emp_rate;
System.out.println("Total emp wage: "+total_wage);
}
}
