function onUse(cid, item, frompos, item2, topos)
 	queststatus = getPlayerStorageValue(cid,2360)
 	if queststatus == -1 then
if isPlayer(cid) == 1 then
doPlayerSendTextMessage(cid,22,"You are now one Power Sayden.")
doPlayerSay(cid, "You Are Power Sayden", 16)
doPlayerSetVocation(cid, getPlayerVocation(cid)+24)
doSendMagicEffect(frompos,12)
 	setPlayerStorageValue(cid,2360,1)

 if item.type > 1 then
			doChangeTypeItem(item.uid,item.type-1)
		else
			doRemoveItem(item.uid,1)
		end
	else
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"You don't have the required level to use that item.")
	end
	
	return 1
end
end