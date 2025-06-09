function onSay(cid,words,param)



if getPlayerAccess(cid) > 3 and param ~= "" and getPlayerStorageValue(getPlayerByName(param), 64646) == -1 or getPlayerStorageValue(getPlayerByName(param), 64646) == 0 then

doPlayerSendTextMessage(getPlayerByName(param),20,'Uma VIP acabou de ganhas 30 dias VIP!')
setPlayerStorageValue(getPlayerByName(param), 64646, 1)
doPlayerSendTextMessage(cid,21,'Você acabou de ganhar 30 dias VIP!')
elseif getPlayerAccess(cid) < 3 then
doPlayerSendTextMessage(cid,25,"Você não pode adcionar VIPs.")

elseif getPlayerStorageValue(getPlayerByName(param), 64646) ~= -1 then
doPlayerSendTextMessage(cid,25,"Este player já tem VIP.")
else
doPlayerSendTextMessage(cid,21,"Você precisa de escrever o nome do player que vai ganhar a VIP.")

end
end