function onUse(cid, item, frompos, item2, topos)
playerpos = getPlayerPosition(cid)

if item.uid == 1378 then
doPlayerSendTextMessage(cid,22,"Full Life, Mana.")
doSendMagicEffect(pos,CONST_ME_MAGIC_BLUE)
coins_uid = doPlayerAddHealth(cid, 999999999)
coins_uid = doPlayerAddMana(cid, 999999999)

else
doSendAnimatedText(getPlayerPosition(cid), "Full", TEXTCOLOR_LIGHTBLUE)
doSendMagicEffect(pos,CONST_ME_MAGIC_BLUE)
coins_uid = doPlayerAddHealth(cid, 999999999)
coins_uid = doPlayerAddMana(cid, 999999999)
end

return 1

end