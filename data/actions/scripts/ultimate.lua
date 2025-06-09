function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7881 then
 	queststatus = getPlayerStorageValue(cid,12565)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"CONGRATULATIONS! Voce Acabou De Fazer a Ultimate Quest!.")
 	doPlayerAddItem(cid,13621,1)
 	setPlayerStorageValue(cid,12565,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Esta Vazio.")
 	end
	else
	return 0
	end

	return 1
	end 