/**
 * @description       : 
 * @author            : Minescu Andrei BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-22-2023
 * @last modified by  : Minescu Andrei, BearingPoint GmbH
**/
public class OpportunityTriggerHandler {
    public static void checkDescriptionPopulated(List<Opportunity> newList, Map<Id,Opportunity> oldMap) {
        for(Opportunity oppRecord: newList){
            if(oppRecord.StageName != oldMap.get(oppRecord.Id).StageName){
                oppRecord.Description = 'Opportunity is updated from'+oldMap.get(oppRecord.Id).StageName+' to '+oppRecord.StageName+
                ' with the new probability of '+oppRecord.Probability+'% chances';
             }
        }
    }
}