public class SearchApexObject{
    public void Click(){
        final PageReference target = new PageReference('https://google.com');
        target.setRedirect(true);
        target.setRedirectCode(301);
    }
    
}