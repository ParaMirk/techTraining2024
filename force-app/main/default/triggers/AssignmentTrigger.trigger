trigger AssignmentTrigger on Movie_Rating__c (before insert) {
    // List<Movie__c> movList = [SELECT ID,Name from Movie__c 
    // limit 20];
    Set<String> strList = new Set<String>();
    // Map<Id,String> mapMv = new Map<Id,String>();
    // for(Movie__c mv : movList){
    //     // mapMv.put(mv.id,mv.Name);
    //     strList.add(mv.Name);
    // }
    for(Movie_Rating__c mvr: Trigger.new){
        if(mvr.Movie_Name__c != null){
            strList.add(mvr.Movie_Name__c);
        }
    }
    List<Movie__c> mv = [SELECT ID from Movie__c where Name In :strList];
    Map<String,Id> movieMap = new Map<String,Id>();
    for(Movie__c m: mv){
        movieMap.put(m.Name,m.Id);
    }
    System.debug('strList:'+strList);
    //  List<Movie__c> newList = 
    for(Movie_Rating__c mov: Trigger.new){
        if(movieMap.containsKey(mov.Movie_Name__c)){
            mov.Movie_lookup__c = movieMap.get(mov.Movie_Name__c);
            System.debug('Movie:'+ mov.Movie_lookup__c);
        }
    }
}