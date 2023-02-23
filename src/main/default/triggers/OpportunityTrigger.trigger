/**
 * @description       : 
 * @author            : Minescu Andrei BearingPoint GmbH
 * @group             : 
 * @last modified on  : 02-23-2023
 * @last modified by  : Minescu Andrei, BearingPoint GmbH
**/
trigger OpportunityTrigger on Opportunity (before update) {
    if(trigger.isBefore && trigger.isUpdate){
        OpportunityTriggerHandler.checkDescriptionPopulated(Trigger.new, Trigger.oldMap);
      }
}