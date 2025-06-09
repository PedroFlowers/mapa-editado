function onUse(cid, item, frompos, item2, topos)

doTeleportThing(cid,{x=912, y=1097, z=8})
doSendAnimatedText(getPlayerPosition(cid), "Woop!!", TEXTCOLOR_WHITE_EXP)
doSendMagicEffect(item1pos,4)

end