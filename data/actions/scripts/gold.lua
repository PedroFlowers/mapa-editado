function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2148 and item.type == 100 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,2152,1)
		doSendAnimatedText(getPlayerPosition(cid), "$$$", TEXTCOLOR_RED)
   	elseif item.itemid == 2148 and item.type < 100 then
   		doPlayerSendTextMessage(cid,22,"Voce prescisa de 100 gold coins para trocar por 1 platinum coin")
   	end
   end
