global with sharing class chartjsSamplePieChartDataProvider extends chartjsPieChartData implements iChartjsDataProvider {
        
        

    global static string getChartjsData(){
    Decimal firstval;
    Decimal secondval;
    
        list<chartjsPieChartData> chartjsData = new list<chartjsPieChartData>();
        list<Order> Orderlist=[select id,Account.name,rajesh4121__Total_Order__c from Order];
        decimal a=Orderlist[0].rajesh4121__Total_Order__c;
        decimal b=Orderlist[1].rajesh4121__Total_Order__c;
               

        chartjsPieChartData d;
        d = new chartjsPieChartData();
        d.label = 'Red';
        d.value = integer.valueof(a);
        d.color = '#F7464A';
        d.highlight = '#FF5A5E';
        chartjsData.add(d);

        d = new chartjsPieChartData();
        d.label = 'Green';
        d.value = integer.valueof(b);
        d.color = '#46BFBD';
        d.highlight = '#5AD3D1';
        chartjsData.add(d);

        d = new chartjsPieChartData();
        d.label = 'Yellow';
        d.value = 100;
        d.color = '#FDB45C';
        d.highlight = '#FFC870';
        chartjsData.add(d);
        
        d = new chartjsPieChartData();
        d.label = 'Blue';
        d.value = 100;
        d.color = '#1E90FF';
        d.highlight = '#1E90FF';
        chartjsData.add(d);

        return JSON.serialize(chartjsData);
    }
}