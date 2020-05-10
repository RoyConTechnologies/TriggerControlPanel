/*
 * 		Name:		triggerControlPanelQuery
 * 		Date:		9/21/19
 * 		Author:		Cole Conroy - RoyCon
 * 		Desc:		queries custom metadata control panel to determine if trigger should fire
 * 
 */
public class triggerControlPanelQuery {
    
    public static boolean getFlag(string objectName){
        boolean temp = false;
        for(Trigger_Control_Panel__mdt tcp : [SELECT Id, Fire_Trigger__c, Object__c FROM Trigger_Control_Panel__mdt WHERE Object__c = :objectName ORDER BY Effective_Date__c DESC Limit 1]){
            temp = tcp.Fire_Trigger__c;
        }
        return temp;
    }

}