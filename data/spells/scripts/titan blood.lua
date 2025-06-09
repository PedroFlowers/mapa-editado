local blood = createConditionObject(CONDITION_OUTFIT)
setConditionParam(blood, CONDITION_PARAM_TICKS, 50000)
addOutfitCondition(blood, 0, 266, 0, 78, 0, 81)
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 2141 then
doPlayerAddMana(cid, math.random(10000000, 15000000))
doPlayerAddHealth(cid, math.random(10000000, 15000000))
doSendMagicEffect(frompos,266)
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doPlayerSay(cid,"TITAN BLOOD!",16)
doPlayerSendTextMessage(cid, 20, 'VOCE USSOU O TITAN BLOOD.')
doRemoveItem(item.uid,1)

end
end