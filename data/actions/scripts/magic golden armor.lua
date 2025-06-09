function onUse(cid, item, frompos, item2, topos)

	if item.uid == 5902 then
 	queststatus = getPlayerStorageValue(cid,5910)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"você achou uma armadura dos generais.")
 	doPlayerAddItem(cid,13589,1)
 	setPlayerStorageValue(cid,5910,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
	end
	else
	return 0
	end
	
	return 1
	end 