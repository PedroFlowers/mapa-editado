function onUse(cid, item, frompos, item2, topos)

if item.itemid == 13693 then
doPlayerAddExp(cid, math.random(1000000, 1000000))
doSendMagicEffect(frompos,12)
getPlayerSoul(cid, math.random(100, 100)) 
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doSendAnimatedText(getPlayerPosition(cid), "1000000", TEXTCOLOR_WHITE_EXP)
doRemoveItem(item.uid,1)

end
end