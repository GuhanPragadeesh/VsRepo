trigger AccountTrigger on Account (before insert, after insert,before update) {
   /* if(Trigger.isAfter && Trigger.isInsert){
        List<Contact> Conlist = new List<Contact>();
        for(Account acd: Trigger.new){
            Contact co =new Contact();
            co.AccountId = acd.Id;
            co.LastName= acd.Name;
            conList.add(co);
        }
       insert Conlist; 
    }*/
    if(Trigger.isBefore && Trigger.isUpdate){
        Set<id> forid = new Set<id>();
        Map<id,String> AccMap= new  Map<id,String>();
        
    }

}