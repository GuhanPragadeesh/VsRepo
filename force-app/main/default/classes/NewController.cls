public class NewController{
    public 	Survey_Question2__c que {get;set;}
    
    public NewController() {
        que = new Survey_Question2__c();
    }
    public PageReference Save(){
        Insert que;
        return null;
    }
}