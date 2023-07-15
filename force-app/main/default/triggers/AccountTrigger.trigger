trigger AccountTrigger on Account (before insert, before update){
    
    if(trigger.isBefore && trigger.isUpdate){
        Account accountRecord = trigger.new[0];
        accountRecord.Rating = 'Warm';
        if(accountRecord.type == 'Any Others' && accountRecord.Site == 'Japan'){
            accountRecord.type.addError('Please select the valid Account Site other than Japan while selecting Type as any Others');
        }
    }

}