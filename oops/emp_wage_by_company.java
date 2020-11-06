public class emp_wage_by_company{
	public static final int part_time=1;
   public static final int full_time=2;

	private String company;
	private int rate;
	private int working_days;
	private int max_hour;
	private int total_wage;

	public emp_wage_by_company(String company, int rate, int working_days, int max_hour){
		this.company = company;
		this.rate = rate;
		this.working_days = working_days;
		this.max_hour = max_hour;
	}

	public void compute_wage(){
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

	@Override
	public String toString(){
		return "Total emp wage for company: "+company+"is "+total_wage;
	}

   public static void main(String[] args){
		emp_wage_by_company dMart = new emp_wage_by_company("dMart",20,2,10);
		emp_wage_by_company reliance = new emp_wage_by_company("Reliance",10,4,20);
		dMart.compute_wage();
		System.out.println(dMart);
		reliance.compute_wage();
		System.out.println(reliance);
   }
}
