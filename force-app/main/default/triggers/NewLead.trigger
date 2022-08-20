trigger NewLead on Lead (before insert, after insert,before update) {
    if(Trigger.isInsert && Trigger.isAfter){
        List<Account>acclist = new List<Account>(); 
        for(Lead ledd: Trigger.new){
        Account acc = new Account();
        acc.Name = ledd.FirstName;
        acc.Sic = ledd.LastName;
            acc.BillingCity= ledd.Company;
            acclist.add(acc);
        }
    insert acclist;
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        Set<id> Leadid = new Set<id>();
        Map<id,String> LeadMap = new Map<id,String>();
        
    }
}