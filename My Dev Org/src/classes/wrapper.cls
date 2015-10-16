public class wrapper{

     public string selectedSobject{get;set;}
    public List<Sobject> lstQuery{get;set;}
    public integer i=10;
    public string values{get;set;}
   

    public wrapper(){
        lstQuery=new List<Sobject>();
    }
    
    public Void doSearch(){
system.debug('@@values'+values);
    
        string Query='';
        Query='select name,id,Phone from account where name like \'%'+values+'%\' or Phone like \'%'+values+'%\'';  
        
       // where name like \'%'+searchstring+'%\' Limit 20';  
        system.debug('==Query=='+Query);
        
        lstQuery=Database.query(Query);
        system.debug('==lstQuery=='+lstQuery);        
    
    }
}