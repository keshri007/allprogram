import emp_wage_by_company_using_interface.java;
public class emp_array{
	public static final int part_time=1;
	public static final int full_time=2;

	private int company_number = 0;
	private emp_wage_by_company_using_interface[] company_wage_array;

	public emp_array(){
		company_wage_array = new emp_wage_by_company_using_interface[5];
	}
}

private void add_company_wage(String company,int rate,int working_days,int max_hour){
	company_wage_array[company_number] = new emp_wage_by_company_using_interface(company, rate, working_days, max_hour);
	company_number++;
}

private void compute_wage(){
	for(int i=0; i<company_number;i++){
		company_wage_array[i].set_total_wage(this.compute_wage(company_wage_array[i]));
		System.out.prinln(company_wage_array[i]);
	}
}

private int compute_wage(emp_wage_by_company_using_interface Wage){
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
         System.out.println("Day#: "+ total_working_days + " Emp Hr: "+ hr);
      }
      total_wage = total_hr*rate;
   }

   public static void main(String[] args){
      emp_array emp=new emp_array();
		emp.add_company_wage("dMart",20,2,10);
		emp.add_company_wage("Reliance",10,4,20);
		emp.compute_wage();
   }
}
