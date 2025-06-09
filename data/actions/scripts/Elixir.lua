local blood = createConditionObject(CONDITION_OUTFIT)
setConditionParam(blood, CONDITION_PARAM_TICKS, 5000)
addOutfitCondition(blood, 0, 261, 0, 0, 0, 0)
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 7440 then
doPlayerAddExp(cid, 3500000)
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doPlayerSay(cid,"Aaaaah..!",2)
doRemoveItem(item.uid,1)

end
end