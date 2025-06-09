local blood = createConditionObject(CONDITION_OUTFIT)
setConditionParam(blood, CONDITION_PARAM_TICKS, 50000)
addOutfitCondition(blood, 0, 12, 0, 78, 0, 81)
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 6558 then
doPlayerAddMana(cid, math.random(10000, 16000))
doPlayerAddHealth(cid, math.random(5000, 10000))
doSendMagicEffect(frompos,12)
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doPlayerSay(cid,"MUAHAHAHA!",16)
doPlayerSendTextMessage(cid, 20, 'você usou demoniac concentrated blood.')
doRemoveItem(item.uid,1)

end
end