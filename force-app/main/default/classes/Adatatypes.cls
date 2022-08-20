public class Adatatypes {
    public static void testtypes() {
//blob 
	string sbob = 'helloeveryone';
	blob bob = blob.valueOf(sbob);
	System.debug('blob is'+bob);
//ToString 
	string str = bob.toString();
	system.debug(str);
//Date 
	Date todate = date.today();  
	System.debug('Todays date is ' + todate); 
    Date addate = date.newInstance(2021, 12, 01);
	Date newdate = addate.addMonths(4);
	System.debug('New Date '+newdate);
//Date and Time 
	Datetime currenttime = Datetime.now();  
    System.debug('Date and Time '+ currenttime);  
//Decimal 
	Decimal point = 34556.5545678;  
    System.debug('Decimal ' +point);  
//Double
    Double doub = 244.45678908765432345678345690; 
    System.debug('Double '+ doub);
//ID
	ID id='a0L2w000003rU8yEAE';
	System.debug('Id'+id);
//Integer 
	Integer a=123;
    System.debug('Int'+a);
//Long 
	long b=12345678543L;
    System.debug('Long'+b);
//Boolean 
    Boolean value = true;
    System.debug('Display Boolean'+value);
//Object 
	object obj='test object';
    String objstr = (String)obj;
    System.assertEquals('test object', objstr);
	System.debug('Executed');     
//String
	String printstr ='Lets get connected through zoom call';
    System.debug(printstr);
}
    //Enum
 public enum month {Jan,Feb,Mar,Apr,May,Jun}
    month display = month.Mar;
}