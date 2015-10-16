trigger Trigger_Attachment_Not_Allowed on Attachment (before insert,before update) {

    list<string> test=new list<string>();
    for(Attachment a:Trigger.new){
        test.add(a.ParentId);
    }
    list<account> acct=[select id,name from account where id in :test];
    integer cnt=[select count() from contact where Account_Id__c in :test];
    if(cnt<1){
        system.debug('@@@cnt'+cnt);    
    for(Attachment Z:Trigger.new){
        Z.adderror('Not Allowed as More than One Contact is Present for    '+ acct[0].name +'   Account');
    }
         
    }
   
}