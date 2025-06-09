function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7880 then
 	queststatus = getPlayerStorageValue(cid,12564)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"CONGRATULATIONS! Voce Acabou De Fazer a Deus Quest!.")
 	doPlayerAddItem(cid,13651,1)
 	setPlayerStorageValue(cid,12564,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Esta Vazio.")
 	end
	else
	return 0
	end

	return 1
	end 