function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"Items de power coins | !powerhelmet,!powerarmor,!powerlegs,!powercboots")

else
doPlayerSendTextMessage(cid,22,"Items de power coins | !powersword ,!powerwand ,!powerrifle")
doPlayerSendTextMessage(cid,22,"Items de power coins | !poweruh ,!powermana")
end

return 1

end