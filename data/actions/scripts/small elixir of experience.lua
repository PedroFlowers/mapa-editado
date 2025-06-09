function onUse(cid, item, frompos, item2, topos)

if item.itemid == 13692 then
doPlayerAddExp(cid, math.random(500000, 500000))
doTargetCombatCondition(0, cid, blood, CONST_ME_NONE)
doSendMagicEffect(frompos,12)
doSendAnimatedText(getPlayerPosition(cid), "500000", TEXTCOLOR_WHITE_EXP)
doRemoveItem(item.uid,1)

end
end