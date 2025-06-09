function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"Items XSP |")

else
doPlayerSendTextMessage(cid,22,"Items de power coins | !ancienthelm,!ancientarmor,!ancientlegs,!ancientboots")
doPlayerSendTextMessage(cid,22,"Items de power coins | !ancientsword ,!ancientwand ,!ancientshuriken")
doPlayerSendTextMessage(cid,22,"Items de power coins | !ancientuh ,!ancientmana")
doPlayerSendTextMessage(cid,22,"Items de power coins | !ancientshield")
end

return 1

end