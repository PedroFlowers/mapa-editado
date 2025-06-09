function onSay(cid)

voc = getPlayerVocation(cid)

if voc == 0 then
doPlayerSendTextMessage(cid,22,"Server Info: Exp Rate 300 Skill Rate 150 Magic Rate 100 Loot Rate 3")

else
doPlayerSendTextMessage(cid,22,"Server Info: Exp Rate 300 Skill Rate 150 Magic Rate 100 Loot Rate 3")
end

return 1

end