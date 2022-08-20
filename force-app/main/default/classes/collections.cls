public class collections {
    public static void collect() {
        List<string> liststr = new List<string>();
        liststr.add('hello1');
        liststr.add('hello2');
        liststr.add('hello3');
        system.debug(liststr);
        liststr.set(0,'helllo');
        system.debug(liststr);
		//sorting
        List<string> brand = new List<string>{'hp','dell','rog','mac'};
        brand.sort();
        brand.add(0,'avita puma');
        system.debug(brand);
        //copy list
        List<string> liststr1 = new List<string>(liststr);
        system.debug(liststr1);
        //addall list
        brand.addall(liststr);
        system.debug('all istems'+brand);
        //get
        system.debug('get '+brand.get(2));
        //remove
        system.debug('remove '+brand.remove(2));
        system.debug('after removed'+brand);
        //clear
        //iststr.clear();
        //system.debug('after clear'+liststr);
        //empty
        boolean checklist = liststr.isempty();
        system.assertEquals(false,checklist);
        system.debug('its empty');
        //size
        system.debug('size'+brand.size());
        //set
        set<string> newset = new set<string>();
        newset.add('set1');
        newset.add('set3');
        newset.add('set2');
        system.debug('set'+newset);
        //copyset
        set<string> copyset = new set<string>(liststr);
        system.debug('copied list '+copyset);
        //addall
        copyset.addall(newset);
        system.debug('added'+copyset);
        //empty 
        boolean checkempty = copyset.isempty();
        system.assertEquals(false,checkempty); 
//map
		map<string,string> stringmap = new map<string,string>();
        stringmap.put('b','keyvalue2');
        stringmap.put('f','keyvalue3');
        stringmap.put('a','keyvalue1');
        system.debug(stringmap);
        map<Integer,string> newmap = new map<Integer,string>();
        newmap.put(1,'keyvalue1');
        newmap.put(3,'keyvalue3');
        newmap.put(2,'keyvalue2');
        newmap.put(1,'keyvalue12');
        system.debug(newmap);
        system.debug(newmap.get(0));	 //null
        system.debug(newmap.get(3));
       // string check = newmap.get(2);
       system.assertEquals('keyvalue2', newmap.get(2));
		system.debug('checked');  
        //copy 
        map<integer,string>newmap2 = new map<integer,string>(newmap);
        system.debug('copied'+newmap2);
        //putall
        map<integer,string>newmap3 = new map<integer,string>();
        newmap3.put(4,'keyvalue4');
        newmap3.putall(newmap2);
        system.debug(newmap3);
        //custom objects
        list<dotPrefix__Employee__c> emplist = [select Name from dotPrefix__Employee__c WHERE id ='a0L2w000003rU8FEAU'];
        list<dotPrefix__Employee__c> emplist1 = [select Name from dotPrefix__Employee__c where Name like '%mani%'];
        map<id,dotPrefix__Employee__c> emp_map = new map<id,dotPrefix__Employee__c>(emplist);
        set<dotPrefix__Employee__c> disset = new set<dotPrefix__Employee__c>(emplist);
        system.debug('set'+emplist1);
        system.debug('map'+emp_map);
        system.debug('object is'+dotPrefix__Employee__c.getSObjectType());
        //clone
        map<integer,string> mapclone = newmap2.clone();
        system.debug('clone'+mapclone);
        //contains key
        boolean contains = newmap.containsKey(3); 
        system.assertEquals(true, contains); 
        system.debug('result '+newmap.containsKey(2));
        //remove
        newmap2.remove(1);
        system.debug(newmap2);
        //isempty 
        system.debug(''+newmap.isempty());
        //hashcode
        system.debug(newmap3.hashcode());
        system.debug(newmap2.hashcode());
        //keyset and values
        system.debug(newmap.Keyset());
        system.debug(newmap.values());
       //size
        system.debug(newmap.size());
        //equals
        system.debug(''+newmap.equals(newmap2));
    }

}