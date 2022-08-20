public class Question {
    
     public Survey_Question2__c que {get;set;}
    public List<Survey__c> Name {get;set;}
    
    public Question(){
        Name = [select Name,No_of_Questions__c from Survey__c ];    
    }
    
     public Question(ApexPages.StandardController Stdcon){
        this.que =(Survey_Question2__c)stdcon.getRecord();   
    }
}