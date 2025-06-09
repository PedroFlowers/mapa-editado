function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2180 then
 	queststatus = getPlayerStorageValue(cid,5990)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"você encontrou uma mind robe.")
 	doPlayerAddItem(cid,13591,1)
 	setPlayerStorageValue(cid,5990,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
	end
	else
	return 0
	end
	
	return 1
	end 