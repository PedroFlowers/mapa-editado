function onUse(cid, item, frompos, item2, topos)

if item.uid == 1749 then
queststatus = getPlayerStorageValue(cid,5690)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"você ganhou 1000000 pontos de experiencia.")
doSendAnimatedText(getPlayerPosition(cid),"1000000", TEXTCOLOR_WHITE_EXP)
doPlayerAddExp(cid,1000000)
doSendMagicEffect(topos, 5)
setPlayerStorageValue(cid,5690,1)
else
doPlayerSendTextMessage(cid,22,"você ja fez esta quest.")
doPlayerAddHealth(cid, math.random(-5000, -5000))
end
else
return 0
end

return 1
end