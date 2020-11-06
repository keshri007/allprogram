public class emp_wage_class_method{
	public static final int part_time=1;
	public static final int full_time=2;
	public static final int rate=20;
	public static final int working_days=2;
	public static final int max_hour=10;

	public static final int compute_wage(){
		int hr=0; int total_hr=0; int total_working_days=0;

		while(total_hr <= max_hour && total_working_days < working_days){
			total_working_days++;
			int ran= (int) Math.floor(Math.random()*10)%3;
			switch(ran){
				case part_time: hr = 4; break;
				case full_time: hr = 8; break;
				default : hr = 0;
			}
			total_hr += hr;
			System.out.println("Day#: "+ total_working_days + "Emp Hr: "+ hr);
		}
		int total_wage = total_hr*rate;
		System.out.println("Total Emp Wage: "+ total_wage);
		return total_wage;
	}
	
	public static void main(String[] args){
		compute_wage();
	}
}
