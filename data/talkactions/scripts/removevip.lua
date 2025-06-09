function onSay(cid,words,param)

temple = getPlayerMasterPos(getPlayerByName(param))

if getPlayerAccess(cid) > 3 and param ~= "" and getPlayerStorageValue(getPlayerByName(param), 13540) == 1 then

doPlayerSendTextMessage(getPlayerByName(param),25,'acabou seus dias VIP!')
doPlayerSendTextMessage(cid,21,'Você acabou de remover uma VIP!')
setPlayerStorageValue(getPlayerByName(param), 13540, -1)
doTeleportThing(getPlayerByName(param),temple)

elseif getPlayerAccess(cid) < 6 then
doPlayerSendTextMessage(cid,25,"Você não pode remover VIPs.")

elseif getPlayerStorageValue(getPlayerByName(param), 13540) ~= 1 then
doPlayerSendTextMessage(cid,25,"Este player ainda não tem VIP.")
else
doPlayerSendTextMessage(cid,21,"Você precisa de escrever o nome do player que vai perder a VIP.")

end
end