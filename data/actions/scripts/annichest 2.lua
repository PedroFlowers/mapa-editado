function onUse(cid, item, frompos, item2, topos)

	if item.uid == 5002 then
 	queststatus = getPlayerStorageValue(cid,5010)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Parabens vc complento a phoenix quest.")
 	doPlayerAddItem(cid,2494,1)
 	setPlayerStorageValue(cid,5010,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
	end
	else
	return 0
	end
	
	return 1
	end 