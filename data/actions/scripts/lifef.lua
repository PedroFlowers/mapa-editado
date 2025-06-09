function onUse(cid, item, frompos, item2, topos)
playerpos = getPlayerPosition(cid)

if item.uid == 1378 then
doPlayerSendTextMessage(cid,22,"recovering life...")
doSendMagicEffect(topos,1)
coins_uid = doPlayerAddHealth(cid, 500)

else
doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_LIGHTBLUE)	
doSendMagicEffect(topos,1)
coins_uid = doPlayerAddHealth(cid, 500)
end

return 1

end