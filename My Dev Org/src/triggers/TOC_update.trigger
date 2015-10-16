trigger TOC_update on Contact (after insert, after update) {
 if(Trigger.IsUpdate || Trigger.IsInsert){
list<account> finalist= new list<account>();
decimal a=0;
decimal b=0;
set<id> acctid=new set<id>();

    for(Contact c :Trigger.new){
        acctid.add(c.Account_Id__c);
        if(c.TOC_Collected__c>0)a=c.TOC_Collected__c;
   }
    
    for(Account acc:[select id,Total_TOC__c from account where id in :acctid]){   
        if(acc.Total_TOC__c>0)b=acc.Total_TOC__c;
        acc.Total_TOC__c =b+a;
        finalist.add(acc);
   }
    update finalist;
    }
}