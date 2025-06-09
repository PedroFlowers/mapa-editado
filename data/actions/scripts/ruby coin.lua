function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 13685 and item.type == 100 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,13641,1)
		doSendAnimatedText(getPlayerPosition(cid), "$$$", TEXTCOLOR_RED)
   	elseif item.itemid == 13685 and item.type < 100 then
   		doRemoveItem(item.uid,1)
   		doPlayerAddItem(cid,2160,100)
		doSendAnimatedText(getPlayerPosition(cid), "$$$", TEXTCOLOR_RED)
   	end
   end
