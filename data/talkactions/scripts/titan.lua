function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"Items XSP |")

else
doPlayerSendTextMessage(cid,22,"Items de power coins | !titanhelmet,!titanarmor,!titanlegs,!titanboots")
doPlayerSendTextMessage(cid,22,"Items de power coins | !titansword ,!titanwand ,!titanbolt")
doPlayerSendTextMessage(cid,22,"Items de power coins | !titanuh ,!titanmana")
doPlayerSendTextMessage(cid,22,"Items de power coins | !titanaol ,!titanshield ,!titanblood")
end

return 1

end