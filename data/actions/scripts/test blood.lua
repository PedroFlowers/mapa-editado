local blood = createConditionObject(CONDITION_OUTFIT)
setConditionParam(blood, CONDITION_PARAM_TICKS, 40000)
addOutfitCondition(blood, 0, 12, 0, 97, 0, 94)
function onUse(cid, item, frompos, item2, topos)


if item.itemid == 6558 then
doPlayerAddMana(cid, 1000000)
doPlayerAddHealth(cid,9999999)
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doPlayerSay(cid,"MUHAHAHAHA!",16)
doRemoveItem(item.uid,1)

end
end