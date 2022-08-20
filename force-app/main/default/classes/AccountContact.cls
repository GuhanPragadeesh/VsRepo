public class AccountContact {
    public static void triggerforacc(List<Account> acclist){
        if(trigger.isAfter && trigger.isInsert){
            list<Contact> conlist = new List<contact>();
            for(Account acc:acclist){
                contact c = new contact();
                c.AccountId = acc.Id; 
                c.LastName = acc.Name;
                conlist.add(c);
            }
            insert conlist;
        }
    }
        public static void updateacc(list<Account>acclist1,map<id,Account> mapacc){
            if(trigger.isAfter && trigger.isUpdate){
                map<id,Account> mapstring = new map<id,Account>();
                for (Account acc1: acclist1){
                    if(acc1.Name!=mapacc.get(acc1.id).Name){
                        mapstring.put(acc1.id, acc1);
                    }
                }
                list<Contact> conlist1 = [select id,AccountId from Contact where AccountId IN : mapstring.keySet()];
                list<Contact> contacttoupdate = new List<Contact>();
                for(contact con: conlist1){
                    con.lastname = mapstring.get(con.AccountId).Name;
                    contacttoupdate.add(con);
                }
                update contacttoupdate;
            }
        }
    }