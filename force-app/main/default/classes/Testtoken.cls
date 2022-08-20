public class Testtoken {
     public static void getres() {
    Http http = new Http();
    HttpRequest req = new HttpRequest();
    req.setEndpoint('https://test.salesforce.com/services/oauth2/token?grant_type=refresh_token&client_id=3MVG90J3nJBMnqrQ8mTBMlC89g25frRNzAsXkwq_4mSCRUl55OfsV8FzmQ4hnZoj616MmWn5mJZqD7077EAxq&client_secret=4E460FACEB4F54E1603A5517B9551555D05E2E6A87FCC86C71BF067F6AD1B72A&refresh_token=5Aep861wJWHSPwPUn1ey6WmaXy3hjs9BNa2OvkNcOThwjv5wSyDBKydL5neGlV8PyPvT0i3IrpiaWzBeFqeVuEr');
    req.setMethod('GET');
    HttpResponse res = http.send(req);
    System.debug(res.getBody());
	System.debug(UserInfo.getSessionId().substring(40));
    }
    }