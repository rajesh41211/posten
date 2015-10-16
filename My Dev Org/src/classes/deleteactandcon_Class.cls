public class deleteactandcon_Class{ 

    public list<SummaryWrapper> wrapaccountList {get;set;}
    public list<account> selectedAccounts{get;set;}    

    public deleteactandcon_Class(){ 
          wrapaccountList =new list<SummaryWrapper>();
          
          for(account a:[select id,name,billingcity,phone,(select id,name from contacts) from account limit 10]){          
                   wrapaccountlist.add(new SummaryWrapper(a));
             }
        }
        
      public void ProcessSelected(){      
             selectedAccounts=new list<account>();
                  for(SummaryWrapper wrapobj :wrapaccountlist){
                       if(wrapobj.isSelected==true){           
                           selectedAccounts.add(wrapobj.accn);
                        }
                     }
                  }
                  

   public class SummaryWrapper{
         public account accn{get;set;}
         public boolean isSelected{get;set;}
         public SummaryWrapper(account a){
          accn=a;
         isselected=false;
       }
     }
}