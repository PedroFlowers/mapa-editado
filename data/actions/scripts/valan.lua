function onUse(cid, item, frompos, item2, topos)
 	queststatus = getPlayerStorageValue(cid,2360)
 	if queststatus == -1 then
if isPlayer(cid) == 1 then
doPlayerSendTextMessage(cid,22,"Agora voc� � um valan")
doPlayerSay(cid, "Agora voc� � um valan", 16)
doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
doSendMagicEffect(frompos,12)
 	setPlayerStorageValue(cid,2360,1)

 if item.type > 1 then
			doChangeTypeItem(item.uid,item.type-1)
		else
			doRemoveItem(item.uid,1)
		end
	else
		doSendMagicEffect(frompos,2)
		doPlayerSendCancel(cid,"Voc� nao tem level para usar ou nao pode usar o item.")
	end
	
	return 1
end
end