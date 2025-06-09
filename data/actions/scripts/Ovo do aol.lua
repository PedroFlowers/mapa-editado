function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 6541 and item.type == 1 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,13684,1)
		doSendAnimatedText(getPlayerPosition(cid), "MAGIC AMULET", TEXTCOLOR_RED)
   	elseif item.itemid == 6541 and item.type < 1 then
   		doRemoveItem(item.uid,1)
   		doPlayerAddItem(cid,13684,1)
		doSendAnimatedText(getPlayerPosition(cid), "MAGIC AMULET", TEXTCOLOR_RED)
   	end
   end
