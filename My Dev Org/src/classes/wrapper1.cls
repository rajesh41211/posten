public class wrapper1{

     public Account myA {get;set;}
     public Call__c myB {get;set;}
     public Contact myC {get;set;}

     public wrapper1(){
          myA = new Account();
          myB = new Call__c();
          myC = new Contact();
     }

     public void saveObjects(){
          insert myA;
          myC.AccountId= myA.Id;
          insert myC;
          myB.Account__c= myA.Id;
          myB.Contact__c=myC.id;          
          insert myB;          
     }
}