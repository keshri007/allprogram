public class emp_wage_by_company_using_interface{
   public final String company;
   public final int rate;
   public final int working_days;
   public final int max_hour;
   public int total_wage;

   public emp_wage_by_company_using_interface(String company,int rate,int working_days,int max_hour){
      this.company = company;
      this.rate = rate;
      this.working_days = working_days;
      this.max_hour = max_hour;
   }

   public void set_total_wage(int total_wage){
      this.total_wage = total_wage;
   }

   @Override
   public String toString(){
      return "Total Emp Wage for Company: "+company+" is:"+ total_wage;
   }
}
