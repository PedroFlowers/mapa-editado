function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"")

else
doPlayerSendTextMessage(cid,22,"Novos Comandos [/serverinfo] - [/spells] - [/online] -  [/XSP] ")
end

return 1

end