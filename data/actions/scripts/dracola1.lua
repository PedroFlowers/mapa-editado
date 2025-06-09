function onUse(cid, item, frompos, item2, topos)
	if item.uid == 1010 then
		queststatus = getPlayerStorageValue(cid, 1010)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, 22, "You have found a dracola armor.")
			doPlayerAddItem(cid, 13537, 1)
			setPlayerStorageValue(cid, 1010, 1)
		else
			doPlayerSendTextMessage(cid, 22, "The chest is empty.")
		end
	else
		return 0
	end
	return 1
end
