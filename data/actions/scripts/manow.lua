function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 6535 and item.type == 0 then
   		doPlayerAddItem(cid,2141,1)
		doSendAnimatedText(getPlayerPosition(cid), "1 BLOOD", TEXTCOLOR_RED)
   	elseif item.itemid == 6535 and item.type < 0 then
   		doRemoveItem(item.uid,1)
   		doPlayerAddItem(cid,2141,1)
		doSendAnimatedText(getPlayerPosition(cid), "1 BLOOD", TEXTCOLOR_RED)
   	end
   end
