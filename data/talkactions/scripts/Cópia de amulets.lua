function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"")

else
doPlayerSendTextMessage(cid,22,"Para Saber Como Adquirir 1� Aol Diga /first 2� Aol /second 3� Aol /third  /monsters")
end

return 1

end