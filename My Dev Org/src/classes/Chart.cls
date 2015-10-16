public class Chart{
@AuraEnabled
public static List<Account> getChart() {
return [SELECT id, name,Total_TOC__c FROM Account];
}
}