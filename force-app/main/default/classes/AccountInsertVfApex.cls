public class AccountInsertVfApex {
    public string str {get;set;}
    
    public AccountInsertVfApex(ApexPages.StandardController controller) {
        
    }
    public Account acc{get;set;}
    public List<Account> acclist {get;set;}
    
    public AccountInsertVfApex(){
    }
    public void save1(){
       // str = ApexPages.currentPage().getParameters().get('AccountName');
        acclist =  new list<Account>();
        string query1 = 'select Name,Phone from Account';
        acclist = Database.query(query1); 
        apexpages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO,'Account Listed below'));
        
       
    }
    
}