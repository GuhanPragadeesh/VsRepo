public class task {
    public static String listmap(){
        List<String> liststr = new List<String>{'Apple','Dinner', 'Biscuit','Cat','Dog','Good'};
            Map<string,List<string>> sorted = new  Map<string,List<string>>();
        for(string str :liststr){
            if(!sorted.ContainsKey(str.left(1))){
                sorted.put(str.left(1),new List<String>());
                List<String> stringlist = sorted.get(str.left(1).toUpperCase());
                stringlist.add(str);
                sorted.put(str.left(1),stringlist);
            } 
            else{
                List<String> stringlist = sorted.get(str.left(1).toUpperCase());
                stringlist.add(str);
                sorted.put(str.left(1),stringlist);
            }
        }
        System.debug(sorted);
         return 'executed';
            }
}
    
    
    /*    liststr.sort(); 
Map<string,string> mapstr = new Map<string,string>();
mapstr.put('A','');
mapstr.put('B','');     
for(String forstr: liststr) {
system.debug('key'+mapstr+'value'+forstr);
}
Map<String, List<String>> mapstr1  = new Map<String, List<String>>();
for(string key: mapstr1.keyset()){
if(!mapstr1.containsKey(key)){
mapstr1.put(key,new List<string>{'Apple','Dinner', 'Biscuit','Cat','Dog'}); */