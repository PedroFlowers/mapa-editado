function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"")

else
doPlayerSendTextMessage(cid,22,"Para Saber Como Adquirir 1º Aol Diga /first 2º Aol /second 3° Aol /third  /monsters")
end

return 1

end