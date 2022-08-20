public class Testtokenlight {
    @AuraEnabled
     public static void getCalloutResponseContents(String url) { 
    Http http = new Http();
    HttpRequest req = new HttpRequest();
    req.setEndpoint(url);
    req.setMethod('GET');
    HttpResponse res = http.send(req);
    System.debug('response' +res.getBody());
         Testtokenlight.getCalloutResponseContents(url);
     }
}