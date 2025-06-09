function onSay(cid, words, param)
if doPlayerRemoveItem(cid,13691,1) == TRUE then
doTeleportThing(cid,{x=1000, y=1000, z=7})
doSendAnimatedText(getPlayerPosition(cid), "CICI CITY", TEXTCOLOR_LIGHTBLUE)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_ENERGYAREA)
else
doPlayerSendCancel(cid, 'You don\'t have teleports.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end
