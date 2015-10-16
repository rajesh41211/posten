trigger Total_Update on Contact (after insert,after update) {
list<string> actid=new list<string>();
integer i;
integer j;
integer k;

 for(Contact c: Trigger.New){ 
 system.debug('@@@@actid'+c.Account_Id__c);
      actid.add(c.Account_Id__c);
      i=integer.valueof(c.TOC_Collected__c);
      if(i>0)i=i; else i=0;       
 }
 
 for(Account a: [select id,total__c from account where id in:actid]){
 
      j=integer.valueof(a.total__c);
      if(j>0)j=j; else j=0;     
      k=i+j;
      a.total__c=k;
      update a;
      system.debug('@@@a'+a);
 }
 
}