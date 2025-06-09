local blood = createConditionObject(CONDITION_OUTFIT)
setConditionParam(blood, CONDITION_PARAM_TICKS, 365000000)
addOutfitCondition(blood, 0, 9, 0, 9, 0, 9)
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 2366 then
doPlayerAddMana(cid, math.random(0, 0))
doPlayerAddHealth(cid, math.random(0, 0))
doSendMagicEffect(frompos,12)
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doPlayerSay(cid,"New Outfit!",16)
doPlayerSendTextMessage(cid, 20, 'você virou um Necromancer!')
doRemoveItem(item.uid,0)

end
end