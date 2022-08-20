public class ButtonRedirectApex {
    public string str{get;set;}
    public List<Account> acclist{get;set;}
    
      public PageReference redirectpage() {
         str = ApexPages.currentPage().getParameters().get('AccountName');
        final PageReference target = new PageReference('https://pragadeeshguhan-dev-ed.lightning.force.com/lightning/o/Account/list?filterName=00B2w00000DpGxqEAF');
        target.setRedirect(true);
        target.setRedirectCode(301);
        acclist =  new list<Account>();
        string query1 = 'select Name,Phone from Account';
        acclist = Database.query(query1); 
        return target;
    }

}