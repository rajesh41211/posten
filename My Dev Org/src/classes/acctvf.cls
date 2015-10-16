public with sharing class acctvf{

public String ecid {get;set;}
public String dcid {get;set;}
public account acct {get;set;}
public test__c test {get;set;}
public boolean a {get;set;}
public string actids{get;set;}
public boolean rendr{get;set;}

   public acctvf(ApexPages.StandardController Controller) {          
           this.acct = (Account)controller.getRecord();
           actids=ApexPages.CurrentPage().getparameters().get('id'); 
           rendr=true;
            }

public test__c[] getacctvf(){
    a=true;
    rendr=false;

     try {
         test__c[] acctvf=[select id,name,Account__c from test__c where Account__c=:actids];
         
         if(acctvf.size()<0) a=false;rendr=true;rendr=true;
             return acctvf;
      } catch (QueryException e)

{
             ApexPages.addMessages(e);
             return null;
      }
      
    }
public Pagereference editItem()
   {    
    
       PageReference nextpage= new PageReference('/'+ecid+'/e?retURL=%2F'+acct); 
       nextpage.setRedirect(True);   
       return nextpage;
   }
   
   public Pagereference  delItem()
   { 
      test=[select id from rajesh4121__test__c where id =:dcid];
      delete test;
      return new PageReference('/'+acct);
   }
 
   
}