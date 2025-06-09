function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"")

else
doPlayerSendTextMessage(cid,22,"Para Adquirir 1º Aol Vc compra o colar no npc Isolda vc pode adquirir o 1 aol disendo /energyze")
end

return 1

end