function onSay(cid,words,param)



if getPlayerAccess(cid) > 3 and param ~= "" and getPlayerStorageValue(getPlayerByName(param), 64646) == -1 or getPlayerStorageValue(getPlayerByName(param), 64646) == 0 then

doPlayerSendTextMessage(getPlayerByName(param),20,'Uma VIP acabou de ganhas 30 dias VIP!')
setPlayerStorageValue(getPlayerByName(param), 64646, 1)
doPlayerSendTextMessage(cid,21,'Voc� acabou de ganhar 30 dias VIP!')
elseif getPlayerAccess(cid) < 3 then
doPlayerSendTextMessage(cid,25,"Voc� n�o pode adcionar VIPs.")

elseif getPlayerStorageValue(getPlayerByName(param), 64646) ~= -1 then
doPlayerSendTextMessage(cid,25,"Este player j� tem VIP.")
else
doPlayerSendTextMessage(cid,21,"Voc� precisa de escrever o nome do player que vai ganhar a VIP.")

end
end