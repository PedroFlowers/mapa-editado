function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2141 then
 	queststatus = getPlayerStorageValue(cid,13682)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"você encontrou um aol.")
 	doPlayerAddItem(cid,13682,1)
 	setPlayerStorageValue(cid,13682,1)
 	else

	end
	else
	return 0
	end
	
	return 1
	end 