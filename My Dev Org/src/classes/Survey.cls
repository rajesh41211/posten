public class Survey {
    
  public list<Survey__c> Surveylist{get;set;}
  public string ids;  
  public integer dateValue2{get;set;}
  public integer n;
  public string nm {get;set;}
  public boolean stp1 {get;set;}
  public boolean stp2 {get;set;}
  public boolean stp3 {get;set;}
  public String contactName {get;set;}  

    public Survey(ApexPages.StandardController controller) {
    dateValue2=system.now().year();
       ids= ApexPages.currentPage().getParameters().get('id');
        stp1=true;       
       stp2=false;
    }
    
     public PageReference Step1() {
      stp1=true;
      stp2=false;      
      stp3=false;
              
        return null;
    }
   
    
    public PageReference Step2() {
        stp2=true;
        stp1=false;
        stp3=false;       
        return null;
    }
    
    public PageReference Step3() {
        stp3=true;
        stp2=false;
        stp1=false;        
        contactName = ApexPages.currentPage().getParameters().get('contactName');   
        if(contactName!=Null)contactName =[select name from contact where id =:contactName].name;              
        return null;
    }
    

}