function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"")

else
doPlayerSendTextMessage(cid,22,"Há na sala de teleports um portal com o nome Purple Balrog  vá la ..  o Third aol somente vip's podem conseguir.")
end

return 1

end