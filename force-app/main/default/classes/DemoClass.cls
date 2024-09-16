public class DemoClass {
    public static void mapMethod(){
          
      Account ac1 = new Account(name='Akash');
      Account ac2 = new Account(name='Rahul');
      Account ac3 = new Account(name='Abhishek');
      Map<String,Account> mapOfNameAndAccount = new Map<String,Account>();
        
        mapOfNameAndAccount.put('Akash',ac1);
         mapOfNameAndAccount.put('Rahul',ac2);
         mapOfNameAndAccount.put('Abhishek',ac3);
        
        System.debug(mapOfNameAndAccount.keySet());
       List<Account> ufo = mapOfNameAndAccount.values();
        System.debug(ufo);
        
   }
}