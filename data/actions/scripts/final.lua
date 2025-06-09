function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2363 then
 	queststatus = getPlayerStorageValue(cid,12566)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"CONGRATULATIONS! Voce Acabou De Fazer a Final Quest!.")
 	doPlayerAddItem(cid,2363,1)
 	setPlayerStorageValue(cid,2363,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Esta Vazio.")
 	end
	else
	return 0
	end

	return 1
	end 