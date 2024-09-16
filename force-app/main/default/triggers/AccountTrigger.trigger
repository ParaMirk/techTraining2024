trigger AccountTrigger on New_Account__e (after insert) {
    for(New_Account__e acc: trigger.new){
        Account ac = new Account();
        ac.Name = acc.Account_Name__c;
        ac.Website = acc.Website__C;
        insert ac;
        System.debug('--account--');
    }
}