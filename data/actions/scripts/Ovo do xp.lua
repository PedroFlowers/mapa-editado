local blood = createConditionObject(CONDITION_OUTFIT)
setConditionParam(blood, CONDITION_PARAM_TICKS, 5000)
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 6542 then
doPlayerAddExp(cid, 550000000)
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doPlayerSay(cid,"Ovo do xp..!",2)
doRemoveItem(item.uid,1)

end
end